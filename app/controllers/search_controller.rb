# To change this template, choose Tools | Templates
# and open the template in the editor.
class SearchField
  attr_accessor :header
  attr_accessor :qualifier
  attr_accessor :search_token
  attr_accessor :eval
  def initialize(field_string, qualifer_string,  eval_string, search_token, include_index_val)
    @header =field_string
    @qualifier =  qualifer_string
    @eval = eval_string
    @search_token = search_token
    @include_index = include_index_val
  end
end
class SearchController
  attr_reader :fields
  attr_reader :available_fields
  attr_reader :table
  

  def initialize(table_name) #eg GroupMember

    @table_name = table_name
    #s = ["Person", "GroupMember", "Attendee", "Lecture", "TutorialSchedule", "Tutorials", "WillingTeacher"];
    @table_index = 1;

    @fields = [SearchField.new("First Name", "Person", "row.person.first_name", "people.first_name", 0),
      SearchField.new("Second Name", "Person", "row.person.second_name", "people.second_name",0)];
    @table = GroupMember.find(:all, :conditions => "people.second_name like '%Verr%'" , :include => :person);

    @search_associations =

      {:people => Person.reflect_on_all_associations(:belongs_to),
      :attendees => Attendee.reflect_on_all_associations(:belongs_to),
      :group_members => GroupMember.reflect_on_all_associations(:belongs_to),
      :lectures => Lecture.reflect_on_all_associations(:belongs_to),
      :tutorial_schedules => TutorialSchedule.reflect_on_all_associations(:belongs_to),
      :tutorials => Tutorial.reflect_on_all_associations(:belongs_to),
      :willing_teacher => WillingTeacher.reflect_on_all_associations(:belongs_to)
    }

    @@search_include = [:person, :attendee];
    group_member2 = GroupMember.find(:all, :conditions => "people.second_name like '%Verr%'" , :include => @@search_include[0] );

    @available_fields = [];
    @max_level = 4;
    @level =0;
    process_reflections = true
    qualifier_str = ""
    qualifiers_str = ""
    
    current_table = @table_name;
    @search_include_strings = [""];
    

    qualifier = eval("HeaderStr(#{current_table}.name)")
    include_str = ""
    ProcessTable(qualifier, qualifier_str, qualifiers_str, current_table, include_str) 





    



    group_member2 = GroupMember.find(:all, :conditions => "people.second_name like '%Verr%'" , :include => :person);

  end
  #     session[:search_table] = "People"
  #  session[:search_table] = "Attendee" #join of lecture_id and person_id
  #   seesion[:search_table] = "GroupMembers" # join of group_id and perons_id
  #   seesion[:search_table] = "Lecture" #join of course_id and person_id
  #   session[:search_table] = "TutorialSchedule" #join of course_id and person_id
  #   session[:search_table] = "Tutorial" #join of tutorial_id and person_id
  #   session[:search_table] = "WillingTeacher" #join course_id and person_id


  #this fuction finds all the possible fields names for a table and puts them in @available_fields.
  #It traces through the associations, and it uses recursion to do this.
  #to prevent call stack overflows, @max_level puts a limit on the number of recursive calls.
  def ProcessTable(qualifier, qualifier_str, qualifiers_str, current_table, include_str)

    @level = @level + 1;
    if @level > @max_level
      return
    end
    include_index = @search_include_strings.index(include_str);
    if include_index == nil
      include_index = @search_include_strings.length;
      @search_include_strings << include_str;
    end
    ExtractFields(qualifier, qualifier_str, qualifiers_str, current_table, include_index);
    string_to_evaluate = "#{current_table}.reflect_on_all_associations(:belongs_to)"
    reflections = eval(string_to_evaluate);
    for reflection in reflections
      reflection_table_name = reflection.class_name
      local_qualifier = HeaderStr(reflection_table_name)
      reflection_qualifier = "#{qualifier} #{local_qualifier}"

      local_qualifier_str = eval("#{reflection_table_name}.class_name");
      reflection_qualifier_str = "#{qualifier_str}.#{local_qualifier_str}"

      local_qualifiers_str = local_qualifier_str.pluralize
      reflection_qualifiers_str = "#{qualifiers_str}.#{local_qualifiers_str}"

      local_include_str = IncludeStr(local_qualifier_str)
      if include_str == ""
        reflection_include_str = local_include_str;
      else
        reflection_include_str = "#{include_str} => #{local_include_str}"
      end

      ProcessTable(reflection_qualifier, reflection_qualifier_str, reflection_qualifiers_str, reflection_table_name, reflection_include_str )
       
    end
    @level = @level - 1
  end
  #This is a helper function for ProcessTable. It does a local field extraction for the current_table
  def ExtractFields(qualifier, qualifier_str, qualifiers_str, current_table, include_index)
    attribute_eval_str = "#{current_table}.column_names"
    for attribute_name in eval(attribute_eval_str)
      eval_str = "row.#{qualifier_str}#{attribute_name}"
      token_str = "#{qualifiers_str}#{attribute_name}"
      #temp_header_str = eval("#{current_table}.attribute_name('#{attribute_name}')");
      header_str = HeaderStr(attribute_name);
    #  x =  HeaderStr("   one_two_three  ")
    #  y =  HeaderStr("  MyNameIsRobertVerrill_ItIsSoId_id iD  and it is true   ")
     
      @available_fields << SearchField.new(header_str, qualifier, eval_str, token_str, include_index)
    end
   
  end
  def HeaderStr(in_str)
    
    ret_str = in_str.strip;
    ret_str = ret_str.gsub(/_/){|s| ' '};
    ret_str = ret_str.gsub(/[a-z][A-Z]\S{1}/){|s| s.insert(1," ")}
    ret_str = ret_str.gsub(/[a-z][A-Z]\S{1}/){|s| s.insert(1," ")}
    ret_str = ret_str.gsub(/(?:\s|^)[a-z]/){|s| s.upcase}
    ret_str = ret_str.gsub(/(?:\s|^)(?:i|I)(?:d|D)(?:\s|$)/){|s| s = s.upcase}
    ret_str = ret_str.gsub(/Id(?:\s|$)/){|s|  s = s.upcase }
    return  ret_str

  end
  def IncludeStr(in_str)
    ret_str = in_str.strip;
    ret_str = ret_str.gsub(/[a-z][A-Z]\S{1}/){|s| s.insert(1," ")}
    ret_str = ret_str.gsub(/[a-z][A-Z]\S{1}/){|s| s.insert(1," ")}
    ret_str = ret_str.gsub(/\s/){|s| '_'};
    ret_str = ret_str.downcase;
    ret_str = ":#{ret_str}"
    return ret_str

  end

end





# To change this template, choose Tools | Templates
# and open the template in the editor.
class SearchField
  attr_accessor :header
  attr_accessor :qualifier
  attr_accessor :search_token
  attr_accessor :eval
  attr_accessor :data_type
  attr_accessor :current_filter_string
  attr_accessor :class_override
  def initialize(field_string, qualifer_string,  eval_string, search_token, include_index_val, data_type_symbol, tag_symbol)
    @header =field_string
    @qualifier =  qualifer_string
    @full_name = "#{qualifer_string}/#{field_string}"
    @tag = tag_symbol
    @eval = eval_string
    @search_token = search_token
    @include_index = include_index_val
    @data_type = data_type_symbol
    @current_filter_string = "%"
    @class_override = "" #this is so that the select column stands out. - I'm not sure this is necessary.
    TestSQLString()
  end
  def TestSQLString()
    @data_type = :integer
    @current_filter_string = ",, ,- 35 ABC aBVdE51 , 3 . 4.. -65 , 7-.. 8 ,9 3 ...9"
    str = GetSQLString();
    @data_type = :integer
    @current_filter_string = "21, 3, -43"
    str = GetSQLString();
    @data_type = :integer
    @current_filter_string = "-24..4"
    str = GetSQLString();
    @data_type = :integer
    @current_filter_string = "%"
    str = GetSQLString();
    @current_filter_string = ""
    str = GetSQLString();

    @data_type = :time
    @current_filter_string = ",4:20 , ,3:90 ABC 85 , 3:40 . 4:20.. 6 2 4, 7.. 8:40 ,9 82:90 3 : 52 ...9"
    str = GetSQLString();
    @data_type = :time
    @current_filter_string = "4:20 , 5, 3:30"
    str = GetSQLString();
    @data_type = :time
    @current_filter_string = "4:20..19:30"
    str = GetSQLString();

    @data_type = :timestamp
    @current_filter_string = ",4-12-20 , ,1973-11 ABC 85 , 3-02-240 . 09-8-20.. 16-7-3 2-3 4-5, 1997-8.. 98-01-7 40-7-7 ,9-8-1 82-90-60 3 : 52 ...9"
    str = GetSQLString();
    @data_type = :timestamp
    @current_filter_string = "4-12-20 , 2005, 3-2"
    str = GetSQLString();
    @data_type = :timestamp
    @current_filter_string = " 4-12-20.. 2005-11-19"
    str = GetSQLString();

    @data_type = :boolean
    @current_filter_string = 0;
    str = GetSQLString();
    @date_type = :boolean
    @current_filter_string = 1;
    str = GetSQLString();

    @data_type = :string
    @current_filter_string = "%a-6% danx"
    str = GetSQLString();

  end
  def GetSQLString
    case @data_type
    when :integer
      ret_val = ParseIntegerStr()      
    when :time
      ret_val = ParseTimeStr()

    when :timestamps
      ret_val = ParseTimeStampStr()
    when :boolean
      ret_val = ParseBooleanStr()
    when :string, :text
      ret_val = ParseTextStr()      
    else
      ret_val = ""
    end
    return  ret_val
  end
  
  def ParseIntegerStr()
    ret_val = ""
    the_orig_str = @current_filter_string

    trimmed_str = @current_filter_string.gsub(/([A-Z]|[a-z])/,' ')
    trimmed_str = trimmed_str.gsub(/-\s+/,'-')
    trimmed_str =trimmed_str.gsub(/(:?^\s+)|(:?\s+$)/,'')
   
    trimmed_str = trimmed_str.gsub(/\d\s+(\d|-)/){|s| s=s.gsub(/\s+/,',')  }
    trimmed_str = trimmed_str.gsub(/\s+/,'')
    
    
    
    trimmed_str = trimmed_str.gsub(/\.{2,}/,'..')
    trimmed_str = trimmed_str.gsub(/\,+/,',')
    trimmed_str = trimmed_str.gsub(/-+/,'-')
    trimmed_str =trimmed_str.gsub(/(:?^,+)|(:?,+$)|(:?^\.+)|(:?\.+$)/,'')
    trimmed_str =trimmed_str.gsub(/\d\.-*\d/){|s| s = s.gsub(/\./, ',')}
     scanner = StringScanner.new(trimmed_str );
   matched_or_str = [];
  # scan_match =  scanner.scan(/\.^-*[0-9]+,/)
  # while scan_match !=nil do
   #  matched_or_str << scan_match;
  #   scan_match = scanner.scan(/\.^-*[0-9]+,/)
  # end

   # matched_or_str = trimmed_str.scan(/\.^-*[0-9]+,/);
  #  matched_or_str = trimmed_str.scan(/[^\.]-*[0-9]+,/);
  #  matched_or_str << trimmed_str.match(/,-*[0-9]+/);
    
    matched_ranges =  trimmed_str.scan(/-*[0-9]+\.{2}-*[0-9]+/);
    for range in matched_ranges
      reg_exp = Regexp.new(range);
      trimmed_str = trimmed_str.gsub(reg_exp, '')
    end
 
     matched_or_str = trimmed_str.scan(/-*[0-9]+/);
    
  
    num_matched_ors = matched_or_str.length
    if matched_or_str.length >0
      ret_val = "("

      for or_str in matched_or_str[0, num_matched_ors-1]
        or_str = or_str.gsub(/,/,'')
        ret_val = ret_val + "#{@search_token} = #{or_str} OR "
      end
      final_or = matched_or_str[num_matched_ors-1]
      final_or = final_or.gsub(/,/,'')
      ret_val = ret_val + "#{@search_token} = #{final_or})"
    end
    num_matched_ranges = matched_ranges.length
    if num_matched_ranges >0
      if num_matched_ors > 0
        ret_val = ret_val + " OR "
      end

      for matched_range in matched_ranges[0,num_matched_ranges -1]
        int_a = matched_range.match(/^-*\d*/);
        int_b = matched_range.match(/-*\d*$/);
        ret_val = ret_val + "( #{@search_token} BETWEEN #{int_a} AND #{int_b}) OR "
      end
      final_range = matched_ranges[num_matched_ranges -1];
      int_a = final_range.match(/^-*\d*/);
      int_b = final_range.match(/-*\d*$/);
      ret_val = ret_val + "( #{@search_token} BETWEEN #{int_a} AND #{int_b})"
    end
    return ret_val;
  end

  def ParseTextStr()
    ret_val = "#{@search_token} SIMILAR TO \'#{@current_filter_string}\'"
    return ret_val
  end

  def ParseBooleanStr()
    if @current_filter_string ==1
      ret_val = "#{@search_token} IS TRUE"
    else
      ret_val = "#{@search_token} IS FALSE"
    end
    return ret_val
  end

  def ParseTimeStr()
    orig_str =@current_filter_string
    trimmed_str = @current_filter_string.gsub(/([A-Z]|[a-z])/,' ')
    trimmed_str =trimmed_str.gsub(/(:?^\s*)|(:?\s*$)/,'')
    trimmed_str = trimmed_str.gsub(/\d\s+\d/){|s| s=s.gsub(/\s+/,',')  }
    trimmed_str = trimmed_str.gsub(/\d\s+\d/){|s| s=s.gsub(/\s+/,',')  }
     trimmed_str = trimmed_str.gsub(/\s+/,'')
    #trimmed_str = trimmed_str.gsub(/(\s+:\s*)|(\s*:\s+)/,':')
    trimmed_str = trimmed_str.gsub(/\.{2,}/,'..')
    trimmed_str = trimmed_str.gsub(/\,+/,',')
    trimmed_str = trimmed_str.gsub(/:+/,':')
    trimmed_str =trimmed_str.gsub(/(:?^,*)|(:?,*$)|(:?^:*)|(:?:*$)/,'')
    matched_ranges = []
   # matched_ranges = trimmed_str.scan(/(:?(:?[0-1][0-9])|(2[0-3]))|(:?(:?(:?[0-1][0-9])|(:?2[0-3])):[0-5][0-9]).{2}(:?(:?[0-1][0-9])|(2[0-3]))|(:?(:?(:?[0-1][0-9])|(:?2[0-3])):[0-5][0-9])/);

   # matched_range = trimmed_str.scan(/(:?(:?[0-9]+)|(:?[0-9]+:[0-9]+))\.{2}(:?(:?[0-9]+)|(:?[0-9]+:[0-9]+))/);
    matched_range = trimmed_str.match(/(:?(:?\d+:\d+)|(:?\d+))\.{2}(:?(:?\d+:\d+)|(:?\d+))/);
     while matched_range do
       x = matched_range[0]
       matched_ranges << matched_range[0]
       reg_exp = Regexp.new(matched_range[0]);
       trimmed_str = trimmed_str.gsub(reg_exp, '')
       matched_range = trimmed_str.match(/(:?(:?\d+:\d+)|(:?\d+))\.{2}(:?(:?\d+:\d+)|(:?\d+))/);
     end

  #  matched_or_str = trimmed_str.match(/(:?\d+:\d+)|(:?\d+)/);
     matched_or_strs_scan = trimmed_str.scan(/(:?\d+:\d+)|(:?\d+)/);
    matched_or_strs = []
    for matched_scan in matched_or_strs_scan
      if matched_scan[0]
         matched_or_strs << matched_scan[0]
      else
        matched_or_strs << matched_scan[1]
      end

    end

    
   
    ret_val  = ""
    num_matched_ors = matched_or_strs.length
    if matched_or_strs.length >0
      ret_val = "("

      for or_str in matched_or_strs[0, num_matched_ors-1]
        or_str = AddMinutes(or_str)
        ret_val = ret_val + "#{@search_token} = #{or_str} OR "
      end
      final_or = matched_or_strs[num_matched_ors-1]
      final_or =  AddMinutes(final_or)
      ret_val = ret_val + "#{@search_token} = #{final_or})"
    end
    num_matched_ranges = matched_ranges.length
    if num_matched_ranges >0
      if num_matched_ors > 0
        ret_val = ret_val + " OR "
      end
      for matched_range in matched_ranges[0,num_matched_ranges -1]
        time_a = matched_range.match(/^(:?(:?\d+:\d+)|(:?\d+))/);
        if  time_a[0]
          time_a = time_a[0]
        else
          time_a = time_a[1]
        end
        time_b = matched_range.match(/(:?(:?\d+:\d+)|(:?\d+))$/);
        if  time_b[0]
          time_b = time_b[0]
        else
          time_b = time_b[1]
        end
        time_a = AddMinutes(time_a)

        time_b = AddMinutes(time_b)
        ret_val = ret_val + "( #{@search_token} BETWEEN #{time_a} AND #{time_b}) OR "
      end
      final_range = matched_ranges[num_matched_ranges -1];
      time_a = final_range.match(/^((:?\d+:\d+)|(:?\d+))/);
        if  time_a[0]
          time_a = time_a[0]
        else
          time_a = time_a[1]
        end
      time_b =final_range.match(/((:?\d+:\d+)|(:?\d+))$/);
      time_a = AddMinutes(time_a)
        if  time_b[0]
          time_b = time_b[0]
        else
          time_b = time_b[1]
        end
      time_b = AddMinutes(time_b)
      ret_val = ret_val + "( #{@search_token} BETWEEN #{time_a} AND #{time_b})"
    end
    return ret_val;
  end
  def AddMinutes(time_str)
    hours = time_str.match(/^\d+/)
    hours = hours[0]
    if time_str =~ /:/
      mins = time_str.match(/\d+$/)
      mins = mins[0]
    else
      mins = "00"
    end
    if hours.to_i > 23
      hours = "00"
    end
    if mins.to_i >59
      mins = "00"
    end

    ret_val = "#{hours}:#{mins}"

    return ret_val
  end

  def ParseTimeStampStr()
    trimmed_str = @current_filter_string.gsub(/([A-Z]|[a-z])/,' ')
    trimmed_str =trimmed_str.gsub(/(:?^\s*)|(:?\s*$)/,'')
    trimmed_str = trimmed_str.gsub(/\d\s*\d/){|s| s=s.gsub(/\s*/,',')  }
    trimmed_str = trimmed_str.gsub(/\s*-\s*/,'-')
    trimmed_str = trimmed_str.gsub(/(:?\s*\.)|(:?\.\s*)/,'.')
    trimmed_str = trimmed_str.gsub(/\.{2,}/,'..')
    trimmed_str = trimmed_str.gsub(/\,*/,',')
    trimmed_str = trimmed_str.gsub(/-*/,'-')
    trimmed_str =trimmed_str.gsub(/(:?^,*)|(:?,*$)|(:?^\.*)|(:?\.*$)/,'')
    matched_or_str = trimmed_str.scan(/\.^(:?(:?\d{2})|(:?\d{4}))|(:?(:?(:?\d{2})|(:?\d{4}))-(:?(:?0{0,1}[1-9])|(:?1[1-2])))|(:?(:?(:?\d{2})|(:?\d{4}))-(:?(:?0{0,1}[1-9])|(:?1[1-2]))-(:?(:?0{0,1}[1-9])|(:?[1-3][0-9]))),/);
    matched_or_str << trimmed_str.match(/,(:?(:?\d{2})|(:?\d{4}))|(:?(:?(:?\d{2})|(:?\d{4}))-(:?(:?0{0,1}[1-9])|(:?1[1-2])))|(:?(:?(:?\d{2})|(:?\d{4}))-(:?(:?0{0,1}[1-9])|(:?1[1-2]))-(:?(:?0{0,1}[1-9])|(:?[1-3][0-9])))/);
    matched_ranges << trimmed_str.scan(/(:?(:?\d{2})|(:?\d{4}))|(:?(:?(:?\d{2})|(:?\d{4}))-(:?(:?0{0,1}[1-9])|(:?1[1-2])))|(:?(:?(:?\d{2})|(:?\d{4}))-(:?(:?0{0,1}[1-9])|(:?1[1-2]))-(:?(:?0{0,1}[1-9])|(:?[1-3][0-9]))).{2}(:?(:?\d{2})|(:?\d{4}))|(:?(:?(:?\d{2})|(:?\d{4}))-(:?(:?0{0,1}[1-9])|(:?1[1-2])))|(:?(:?(:?\d{2})|(:?\d{4}))-(:?(:?0{0,1}[1-9])|(:?1[1-2]))-(:?(:?0{0,1}[1-9])|(:?[1-3][0-9])))/);
    ret_val  = ""
    num_matched_ors = matched_or_str.length
    if matched_or_str.length >0
      ret_val = "("

      for or_str in matched_or_str[0, num_matched_ors-1]
        date_str = CompleteDate(or_str)
        ret_val = ret_val + "#{@search_token} = #{date_str} OR "
      end
      date_str = CompleteDate(matched_or_str[num_matched_ors-1])
      ret_val = ret_val + "#{@search_token} = #{date_str})"
    end
    num_matched_ranges = matched_ranges.length
    if num_matched_ranges >0
      if num_matched_ors > 0
        ret_val = ret_val + " OR "
      end
      for matched_range in matched_ranges[0,num_matched_ranges -1]
        date_a = matched_range.match(/^(:?(:?\d{2})|(:?\d{4}))|(:?(:?(:?\d{2})|(:?\d{4}))-(:?(:?0{0,1}[1-9])|(:?1[1-2])))|(:?(:?(:?\d{2})|(:?\d{4}))-(:?(:?0{0,1}[1-9])|(:?1[1-2]))-(:?(:?0{0,1}[1-9])|(:?[1-3][0-9])))/);
        date_b = matched_range.match(/(:?(:?\d{2})|(:?\d{4}))|(:?(:?(:?\d{2})|(:?\d{4}))-(:?(:?0{0,1}[1-9])|(:?1[1-2])))|(:?(:?(:?\d{2})|(:?\d{4}))-(:?(:?0{0,1}[1-9])|(:?1[1-2]))-(:?(:?0{0,1}[1-9])|(:?[1-3][0-9])))$/);
        date_a = CompleteDate(date_a)
        date_b= CompleteDate(date_b)
        
        ret_val = ret_val + "( #{@search_token} BETWEEN #{date_a} AND #{date_b}) OR "
      end
      final_range = matched_ranges[num_matched_ranges -1];
      date_a = final_range.match(/^(:?(:?\d{2})|(:?\d{4}))|(:?(:?(:?\d{2})|(:?\d{4}))-(:?(:?0{0,1}[1-9])|(:?1[1-2])))|(:?(:?(:?\d{2})|(:?\d{4}))-(:?(:?0{0,1}[1-9])|(:?1[1-2]))-(:?(:?0{0,1}[1-9])|(:?[1-3][0-9])))/);
      date_b = final_range.match(/(:?(:?\d{2})|(:?\d{4}))|(:?(:?(:?\d{2})|(:?\d{4}))-(:?(:?0{0,1}[1-9])|(:?1[1-2])))|(:?(:?(:?\d{2})|(:?\d{4}))-(:?(:?0{0,1}[1-9])|(:?1[1-2]))-(:?(:?0{0,1}[1-9])|(:?[1-3][0-9])))$/);
      date_a = CompleteDate(date_a)
      date_b= CompleteDate(date_b)

      ret_val = ret_val + "( #{@search_token} BETWEEN #{date_a} AND #{date_b})"
    end
    return ret_val;
  end
  def CompleteDate(date_str)

    scan_array = date_str.match(/d*/)
    scan_length = scan_array.length

    year = scan_array[0]

 

    if year.text_length == 2
      year_val = year.to_i
      year_val = year_val - ((year_val -1) /50).floor * 100
      year_val = year_val +2000
      year = year_val.to_str
    end

    if scan_length >1
      month = scan_array[1]
    else
      month = "01"
    end
    if scan_length >2
      day = scan_array[2]
      month_days_val = days_in_month(month.to_i, year_val)
      day_val = day.to_i
      if day_val > month_days_val
        dav_val =  month_days_val
        day = dav_val.to_str
      else
        day = "01"
      end
    end

    ret_val = "#{year}-#{month}-#{day}"
  end



    
end

class SearchController
  attr_reader :current_filter_indices # these refer to indices in @available_fields on which searches are curretnly done
  attr_reader :current_field_indices # these are the columns of the table that are currently displayed
  attr_reader :possible_field_indices # these are the available fields that are not currently displayed int the table
  attr_reader :available_fields #these are all the availabe fields extracted from the table and its :belongs_to associations
  attr_reader :possible_field_strings #
  attr_reader :possible_filter_names
  attr_reader :possible_filter_indices
  attr_reader :current_filter_names
  attr_reader :current_filters
  attr_reader :current_fields

  def initialize(table_name) #eg GroupMember

    @table_name = table_name
    @current_filter_indices = []
    @current_filter_names = []
    @possible_filter_names =[]

   # @fields = [SearchField.new("First Name", "Person", "row.person.first_name", "people.first_name", 0, 0),
    #  SearchField.new("Second Name", "Person", "row.person.second_name", "people.second_name",0, 0)];
    #@table = GroupMember.find(:all, :conditions => "people.second_name like '%Verr%'" , :include => :person);

    #@table_index = 1;
    

   # @@search_include = [:person, :attendee];
   # group_member2 = GroupMember.find(:all, :conditions => "people.second_name like '%Verr%'" , :include => @@search_include[0] );

    @available_fields = [];
    @max_level = 4;
    @level =0;
    process_reflections = true
    qualifier_str = ""
    qualifiers_str = ""
    
    current_table = @table_name;
    @search_include_strings = [""];
    @data_type_strings = [];
    

    qualifier = eval("HeaderStr(#{current_table}.name)")
    include_str = ""
    ProcessTable(qualifier, qualifier_str, qualifiers_str, current_table, include_str) #sets @available_fields

    number_available_fields = @available_fields.length
    default_number_of_fields = 5

    if number_available_fields <=default_number_of_fields
      @current_field_indices =  (0 .. (number_available_fields -1));

      @possible_field_indices = []
    else
      @current_field_indices = (1..default_number_of_fields-1)
      @possible_field_indices = (default_number_of_fields..number_available_fields-1)
    end
    @possible_field_strings  = [];
    for index in  @possible_field_indices
      @possible_field_strings << @available_fields[@possible_field_indices[index]]
    end
    @possible_field_strings << "Select..."

    @search_order = @current_field_indices;
    @search_direction = []
    for index in @search_order
      @search_direction << :asc ;
    end

    @possible_filter_indices = (0..number_available_fields-1)
    @possible_filter_names = []
    for field in @available_fields
      @possible_filter_names << field.full_name
    end
    @possible_filter_names  << "Select..."

    @current_fields = []
    @current_filters = []
    for index in @current_field_indices
      @current_fields << @available_fields[index];
    end
    for index in @current_filter_indices
      @current_filters << @available_fields[index];
    end


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

  def get_eval_string
    Person.find(:all,:conditions => session[:searchstr], :order => Person::SortOrder[session[:sortOption]] )
    session[:searchstr] = "second_name SIMILAR TO \'" + session[:searchstr2nd] + "\' AND first_name SIMILAR TO \'"
    + session[:searchstr1st] + "\' AND entry_year = \'" + session[:searchstrYear] + "\'"
    GroupMember.find(:first, :conditions => "people.second_name like '%Verr%'" , :include => :person);

    condition_str = "";
    num_filters = current_filters;
    for filter in current_filters[0,  num_filters -1]
      filter_str = filter.GetSQLString;
      if filter_str.text_length >0
        condition_str = condition_str + "#{filter.GetSQLString} AND "
      end
      
    end
    filter_str = current_filters[num_filters -1].GetSQLString
    if filter_str.text_length >0
      condition_str = condition_str + "#{current_filters[num_filters -1].GetSQLString}"
    else
      condition_str = condition_str.gsub(/AND\s*$/){|s| ''};
    end

    ret_str = "#{@table_name}.find(:all,:conditions => #{condition_str}, :order => #{order_str}, #{include_str})"
    return ret_str;
  end





  def UpdateOrder(index)

  end

  def AddFilter(index)

  end

  def RemoveFilter(index)

  end



  def Search #uses filters to update Table
    
  end



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
      reflection_qualifier = "#{qualifier}/#{local_qualifier}"

      local_qualifier_str = QualifierStr(reflection_table_name);
      reflection_qualifier_str = "#{qualifier_str}#{local_qualifier_str}."

      local_qualifiers_str = local_qualifier_str.pluralize
      reflection_qualifiers_str = "#{qualifiers_str}#{local_qualifiers_str}."

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
    #attribute_eval_str = "#{current_table}.column_names"
    attribute_eval_str = "#{current_table}.columns"
    for attribute in eval(attribute_eval_str)
      attribute_name= attribute.name()
      attribute_type  = attribute.type
      #attribute_index = @data_type_strings.index(attribute_type)
      #  if  attribute_index == nil
      #    attribute_index = @data_type_strings.length
      #     @data_type_strings << attribute_type;
      #  end
      eval_str = "row.#{qualifier_str}#{attribute_name}"
      token_str = "#{qualifiers_str}#{attribute_name}"
      #temp_header_str = eval("#{current_table}.attribute_name('#{attribute_name}')");
      header_str = HeaderStr(attribute_name);
      #  x =  HeaderStr("   one_two_three  ")
      #  y =  HeaderStr("  MyNameIsRobertVerrill_ItIsSoId_id iD  and it is true   ")
      tag_symbol =  QualifierStr("#{qualifier}_#{header_str}").to_sym
     
      @available_fields << SearchField.new(header_str, qualifier, eval_str, token_str, include_index, attribute_type, tag_symbol)
      if  @available_fields.length == 5
        yy = 3
      end
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
  def QualifierStr(in_str)
    ret_str = in_str.strip;
    ret_str = ret_str.gsub(/[a-z][A-Z]\S{1}/){|s| s.insert(1," ")}
    ret_str = ret_str.gsub(/[a-z][A-Z]\S{1}/){|s| s.insert(1," ")}
    ret_str = ret_str.gsub(/\s/){|s| '_'};
    ret_str = ret_str.gsub(/\//){|s| '__'};
    ret_str = ret_str.downcase;
    return ret_str;
  end
  def IncludeStr(in_str)
    ret_str = QualifierStr(in_str);
    ret_str = ":#{ret_str}"
    return ret_str

  end
end






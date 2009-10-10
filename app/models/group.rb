

class Group < ActiveRecord::Base
  USER_WHERE_STR = "\"(a0.private = false OR a0.owner_id = \#{@user_id})\""

 ExtendedFilters = [
        ExtendedFilter.new(:subquery, SubQuery.new("Number of group members", "number_of_group_members" ,
      "(CASE a0.table_name
        WHEN 'people' THEN (SELECT COUNT(*) FROM group_people x1 WHERE x1.group_id = a0.id)
        WHEN 'courses' THEN (SELECT COUNT(*) FROM group_courses x1 WHERE x1.group_id = a0.id)
        WHEN 'days' THEN (SELECT COUNT(*) FROM group_days x1 WHERE x1.group_id = a0.id)
        WHEN 'insitutions' THEN (SELECT COUNT(*) FROM group_institutions x1 WHERE x1.group_id = a0.id)
        WHEN 'lectures' THEN (SELECT COUNT(*) FROM group_lectures x1 WHERE x1.group_id = a0.id)
        WHEN 'attendees' THEN (SELECT COUNT(*) FROM group_attendees x1 WHERE x1.group_id = a0.id)
        WHEN 'locations' THEN (SELECT COUNT(*) FROM group_locations x1 WHERE x1.group_id = a0.id)
        WHEN 'programmes' THEN (SELECT COUNT(*) FROM group_programmes x1 WHERE x1.group_id = a0.id)
        WHEN 'tutorial_schedules' THEN (SELECT COUNT(*) FROM group_tutorial_schedules x1 WHERE x1.group_id = a0.id)
        WHEN 'tutorials' THEN (SELECT COUNT(*) FROM group_tutorials x1 WHERE x1.group_id = a0.id)
        WHEN 'users' THEN (SELECT COUNT(*) FROM group_users x1 WHERE x1.group_id = a0.id)
        WHEN 'agatha_emails' THEN (SELECT COUNT(*) FROM group_agatha_emails x1 WHERE x1.group_id = a0.id)
        WHEN 'email_templates' THEN (SELECT COUNT(*) FROM group_email_templates x1 WHERE x1.group_id = a0.id)
        ELSE 0 END)", "")),
      ExtendedFilter.new(:external_filter, ExternalFilter.new("Group", #class_name
      "Groups of type", #header
      "a0.table_name = 'arg_value'", #where_str_
      "Person",#argument_class_
      "",#group_class_
      "[GroupMember.new(\"People\",\"people\"),
       GroupMember.new(\"Courses\",\"courses\"),
       GroupMember.new(\"Institutions\",\"institutions\"),
       GroupMember.new(\"Lectures\",\"lectures\"),
       GroupMember.new(\"Attendees\",\"attendees\"),
       GroupMember.new(\"Tutorials\",\"tutorials\"),
       GroupMember.new(\"Tutorial Schedules\",\"tutorial_schedules\"),
       GroupMember.new(\"Users\",\"users\"),
       GroupMember.new(\"Emails\",\"agatha_emails\"),
       GroupMember.new(\"Email Templates\",\"email_templates\")]", #argument_selector_str_
      false,#allow_multiple_arguments
      false#group_selector_
      )),
       ExtendedFilter.new(:external_filter, ExternalFilter.new("Group", #class_name
      "Groups having person", #header
      "(SELECT COUNT(*) FROM group_people b1 WHERE b1.person_id = arg_value AND b1.group_id = a0.id)>0", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true#group_selector_
      )),
       ExtendedFilter.new(:external_filter, ExternalFilter.new("Group", #class_name
      "Groups not having person", #header
      "(a0.table_name = 'people' AND (SELECT COUNT(*) FROM group_people b1 WHERE b1.person_id = arg_value AND b1.group_id = a0.id)=0)", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true#group_selector_
      )),
      ExtendedFilter.new(:external_filter, ExternalFilter.new("Group", #class_name
      "Groups having course", #header
      "(SELECT COUNT(*) FROM group_courses b1 WHERE b1.course_id = arg_value AND b1.group_id = a0.id)>0", #where_str_
      "Course",#argument_class_
      "GroupCourse",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true#group_selector_
      )),
       ExtendedFilter.new(:external_filter, ExternalFilter.new("Group", #class_name
      "Groups not having course", #header
      "(a0.table_name = 'courses' AND (SELECT COUNT(*) FROM group_courses b1 WHERE b1.course_id = arg_value AND b1.group_id = a0.id)=0)", #where_str_
      "Course",#argument_class_
      "GroupCourse",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true#group_selector_
      )),
           ExtendedFilter.new(:external_filter, ExternalFilter.new("Group", #class_name
      "Groups having lecture", #header
      "(SELECT COUNT(*) FROM group_lectures b1 WHERE b1.lecture_id = arg_value AND b1.group_id = a0.id)>0", #where_str_
      "Lecture",#argument_class_
      "GroupLecture",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true#group_selector_
      )),
       ExtendedFilter.new(:external_filter, ExternalFilter.new("Group", #class_name
      "Groups not having lecture", #header
      "(a0.table_name = 'lectures' AND (SELECT COUNT(*) FROM group_lectures b1 WHERE b1.lecture_id = arg_value AND b1.group_id = a0.id)=0)", #where_str_
      "Lecture",#argument_class_
      "GroupLecture",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true#group_selector_
      )),
      ExtendedFilter.new(:external_filter, ExternalFilter.new("Group", #class_name
      "Groups having tutorial schedule", #header
      "(SELECT COUNT(*) FROM group_tutorial_schedules b1 WHERE b1.tutorial_schedule_id = arg_value AND b1.group_id = a0.id)>0", #where_str_
      "TutorialSchedule",#argument_class_
      "GroupTutorialSchedule",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true#group_selector_
      )),
       ExtendedFilter.new(:external_filter, ExternalFilter.new("Group", #class_name
      "Groups not having lecture", #header
      "(a0.table_name = 'tutorial_schedules' AND (SELECT COUNT(*) FROM group_tutorial_schedules b1 WHERE b1.tutorial_schedule_id = arg_value AND b1.group_id = a0.id)=0)", #where_str_
      "TutorialSchedule",#argument_class_
      "GroupTutorialSchedule",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true#group_selector_
      ))
  ];
has_many :group_people, :class_name => "GroupPerson", :dependent => :destroy
has_many :group_lectures, :class_name => "GroupLecture", :dependent => :destroy
has_many :group_users, :class_name =>"GroupUser", :dependent => :destroy

has_many :group_filters, :class_name => "GroupFilter", :dependent => :destroy

has_many :people, :class_name =>"Person", :through => :group_people
has_many :lectures, :class_name =>"Lecture", :through => :group_lectures
has_many :users, :class_name =>"User", :through => :group_users

belongs_to :owner,  :class_name => "User", :foreign_key => "owner_id"
belongs_to :readers_group,  :class_name => "GroupUser", :foreign_key => "readers_id"
belongs_to :writers_group, :class_name => "GroupUser", :foreign_key =>"writers_id"

  def group_list_strings  
   
    create_group_list 
  
    return @group_list_strings;
    
  end

  def group_list_ids
    
      create_group_list;
   
    return @group_list_ids;
  end
  
  private
  def create_group_list
    @group_list_strings = ['Select...'];
    @group_list_ids = [0];
    groups = Group.find(:all,:order => 'group_name asc');
    for group in groups
      @group_list_strings << group.group_name;
      @group_list_ids << group.id;
    end
    @group_list_defined = true;
  end

end

class Tutorial < ActiveRecord::Base
   ExtendedFilters = [
      ExtendedFilter.new(:foreign_filter, ForeignFilter.new("tutorial_schedule_id","person_id")),
       ExtendedFilter.new(:foreign_filter, ForeignFilter.new("tutorial_schedule_id","course_id")),
        ExtendedFilter.new(:foreign_filter, ForeignFilter.new("tutorial_schedule_id","term_id")),
      ExtendedFilter.new(:foreign_filter, ForeignFilter.new("tutorial_schedule_id","number_of_tutorials")),
      ExtendedFilter.new(:external_filter, ExternalFilter.new("Tutorial", #class_name
      "Tutorials in group", #header
      "(SELECT COUNT(*) FROM group_tutorials b1 WHERE b1.group_id = arg_value AND b1.tutorial_id = a0.id)>0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(false,\"asc\", false, \"\", \"a0.table_name ='tutorials' AND (a0.owner_id = user_id_ OR administrator_ OR ((SELECT COUNT(*) FROM group_users a2 WHERE a2.user_id = user_id_ AND a2.group_id = a0.readers_id) > 0 AND a0.private = FALSE) )\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false#group_selector_
      )),
      ExtendedFilter.new(:external_filter, ExternalFilter.new("Tutorial", #class_name
      "Tutorials not in group", #header
      "(SELECT COUNT(*) FROM group_tutorials b1 WHERE b1.group_id = arg_value AND b1.tutorial_id = a0.id)=0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(false,\"asc\", false, \"\", \"a0.table_name ='tutorials' AND (a0.owner_id = user_id_ OR administrator_ OR ((SELECT COUNT(*) FROM group_users a2 WHERE a2.user_id = user_id_ AND a2.group_id = a0.readers_id) > 0 AND a0.private = FALSE) )\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false#group_selector_
      )),
           ExtendedFilter.new(:external_filter, ExternalFilter.new("Tutorial", #class_name
      "Tutorials in some group", #header
      "(SELECT COUNT(*) FROM group_tutorials b1 WHERE b1.tutorial_id = a0.id)>0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "[]", #argument_selector_str_
      false,#allow_multiple_arguments
      false#group_selector_
      )),
           ExtendedFilter.new(:external_filter, ExternalFilter.new("Tutorial", #class_name
      "Tutorials not in any group", #header
      "(SELECT COUNT(*) FROM group_tutorials b1 WHERE b1.tutorial_id = a0.id)=0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "[]", #argument_selector_str_
      false,#allow_multiple_arguments
      false#group_selector_
      )),
       ExtendedFilter.new(:external_filter, ExternalFilter.new("Tutorial", #class_name
      "Tutorials for student", #header
      "(a0.person_id = arg_value)", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      false,#allow_multiple_arguments
      true#group_selector_
      )),
       ExtendedFilter.new(:external_filter, ExternalFilter.new("Tutorial", #class_name
      "Tutorials for not student", #header
      "(a0.person_id != arg_value)", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true#group_selector_
      )),
      ExtendedFilter.new(:external_filter, ExternalFilter.new("Tutorial", #class_name
      "Tutorials given by tutor", #header
      "(SELECT COUNT(*) FROM tutorial_schedules b1 WHERE b1.person_id = arg_value AND a0.tutorial_schedule_id = b1.id )>0", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      false,#allow_multiple_arguments
      true#group_selector_
      )),
      ExtendedFilter.new(:external_filter, ExternalFilter.new("Tutorial", #class_name
      "Tutorials not given by tutor", #header
      "(SELECT COUNT(*) FROM tutorial_schedules b1 WHERE b1.person_id = arg_value AND a0.tutorial_schedule_id = b1.id )=0", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      false,#allow_multiple_arguments
      true#group_selector_
      )),
       ExtendedFilter.new(:external_filter, ExternalFilter.new("Tutorial", #class_name
      "Tutorials given in term", #header
      "(SELECT COUNT(*) FROM tutorial_schedules b1 WHERE b1.term_id = arg_value AND a0.tutorial_schedule_id = b1.id )>0", #where_str_
      "Term",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(true,\"desc\", false, \"\", \"\")", #argument_selector_str_
      false,#allow_multiple_arguments
      false#group_selector_
      )),
      ExtendedFilter.new(:external_filter, ExternalFilter.new("Tutorial", #class_name
      "Tutorials not given in term", #header
      "(SELECT COUNT(*) FROM tutorial_schedules b1 WHERE b1.term_id = arg_value AND a0.tutorial_schedule_id = b1.id )=0", #where_str_
      "Term",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(true,\"desc\", false, \"\", \"\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false#group_selector_
      ))
  ];
  USER_WHERE_STR = "";
  belongs_to :tutorial_attendee, :class_name => "Person", :foreign_key => "person_id"
  belongs_to :tutorial_schedule, :class_name => "TutorialSchedule", :foreign_key => "tutorial_schedule_id"
end

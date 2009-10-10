class Course < ActiveRecord::Base
  USER_WHERE_STR = "";
  ExtendedFilters = [
   ExtendedFilter.new(:external_filter, ExternalFilter.new("Course", #class_name
      "Courses in group", #header
      "(SELECT COUNT(*) FROM group_courses b1 WHERE b1.group_id = arg_value AND b1.course_id = a0.id)>0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(false,\"asc\", false, \"\", \"a0.table_name ='courses' AND (a0.owner_id = user_id_ OR administrator_ OR ((SELECT COUNT(*) FROM group_users a2 WHERE a2.user_id = user_id_ AND a2.group_id = a0.readers_id) > 0 AND a0.private = FALSE) )\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false#group_selector_
      )),
       ExtendedFilter.new(:external_filter, ExternalFilter.new("Course", #class_name
      "Courses not in group", #header
      "(SELECT COUNT(*) FROM group_courses b1 WHERE b1.group_id = arg_value AND b1.course_id = a0.id)=0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(false,\"asc\", false, \"\", \"a0.table_name ='courses' AND (a0.owner_id = user_id_ OR administrator_ OR ((SELECT COUNT(*) FROM group_users a2 WHERE a2.user_id = user_id_ AND a2.group_id = a0.readers_id) > 0 AND a0.private = FALSE) )\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false#group_selector_
      )),
       ExtendedFilter.new(:external_filter, ExternalFilter.new("Course", #class_name
      "Courses in some group", #header
      "(SELECT COUNT(*) FROM group_courses b1 WHERE b1.course_id = a0.id)>0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "[]", #argument_selector_str_
      false,#allow_multiple_arguments
      false#group_selector_
      )),
           ExtendedFilter.new(:external_filter, ExternalFilter.new("Course", #class_name
      "Courses not in any group", #header
      "(SELECT COUNT(*) FROM group_courses b1 WHERE b1.course_id = a0.id)=0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "[]", #argument_selector_str_
      false,#allow_multiple_arguments
      false#group_selector_
      )),
   ExtendedFilter.new(:external_filter, ExternalFilter.new("Course", #class_name
      "Courses having lecture schedule", #header
      "(SELECT COUNT(*) FROM lectures b1 WHERE b1.course_id = a0.id)>0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "[]", #argument_selector_str_
      false,#allow_multiple_arguments
      false#group_selector_
      )),
       ExtendedFilter.new(:external_filter, ExternalFilter.new("Course", #class_name
      "Courses not having lecture schedule", #header
      "(SELECT COUNT(*) FROM lectures b1 WHERE b1.course_id = a0.id)=0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "[]", #argument_selector_str_
      false,#allow_multiple_arguments
      false#group_selector_
      )),
       ExtendedFilter.new(:external_filter, ExternalFilter.new("Course", #class_name
      "Courses having tutorial schedule", #header
      "(SELECT COUNT(*) FROM tutorial_schedules b1 WHERE b1.course_id = a0.id)>0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "[]", #argument_selector_str_
      false,#allow_multiple_arguments
      false#group_selector_
      )),
       ExtendedFilter.new(:external_filter, ExternalFilter.new("Course", #class_name
      "Courses not having tutorial schedule", #header
      "(SELECT COUNT(*) FROM tutorial_schedules b1 WHERE b1.course_id = a0.id)=0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "[]", #argument_selector_str_
      false,#allow_multiple_arguments
      false#group_selector_
      )),
   ExtendedFilter.new(:external_filter, ExternalFilter.new("Course", #class_name
      "Courses lectured to person", #header
      "(SELECT COUNT(*) FROM attendees b1 INNER JOIN lectures b2 ON b2.id = b1.lecture_id WHERE b1.person_id = arg_value AND b2.course_id = a0.id)>0", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true#group_selector_
      )),
   ExtendedFilter.new(:external_filter, ExternalFilter.new("Course", #class_name
      "Courses not lectured to person", #header
      "(SELECT COUNT(*) FROM attendees b1 INNER JOIN lectures b2 ON b2.id = b1.lecture_id WHERE b1.person_id = arg_value AND b2.course_id = a0.id)=0", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true#group_selector_
      )),
   ExtendedFilter.new(:external_filter, ExternalFilter.new("Course", #class_name
      "Courses tutored to person", #header
      "(SELECT COUNT(*) FROM tutorials b1 INNER JOIN tutorial_schedules b2 ON b2.id = b1.tutorial_schedule_id WHERE b1.person_id = arg_value AND b2.course_id = a0.id)>0", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true#group_selector_
      )),
   ExtendedFilter.new(:external_filter, ExternalFilter.new("Course", #class_name
      "Courses not tutored to person", #header
      "(SELECT COUNT(*) FROM tutorials b1 INNER JOIN tutorial_schedules b2 ON b2.id = b1.tutorial_schedule_id WHERE b1.person_id = arg_value AND b2.course_id = a0.id)=0", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true#group_selector_
      )),
    ExtendedFilter.new(:external_filter, ExternalFilter.new("Course", #class_name
      "Courses lectured by person", #header
      "(SELECT COUNT(*) FROM lectures b1 WHERE b1.person_id = arg_value AND b1.course_id = a0.id)>0", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true#group_selector_
      )),
    ExtendedFilter.new(:external_filter, ExternalFilter.new("Course", #class_name
      "Courses not lectured by person", #header
      "(SELECT COUNT(*) FROM lectures b1 WHERE b1.person_id = arg_value AND b1.course_id = a0.id)=0", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true#group_selector_
      )),
    ExtendedFilter.new(:external_filter, ExternalFilter.new("Course", #class_name
      "Courses tutored by person", #header
      "(SELECT COUNT(*) FROM tutorial_schedules b1 WHERE b1.person_id = arg_value AND b1.course_id = a0.id)>0", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true#group_selector_
      )),
        ExtendedFilter.new(:external_filter, ExternalFilter.new("Course", #class_name
      "Courses not tutored by person", #header
      "(SELECT COUNT(*) FROM tutorial_schedules b1 WHERE b1.person_id = arg_value AND b1.course_id = a0.id)=0", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true#group_selector_
      )),
     ExtendedFilter.new(:external_filter, ExternalFilter.new("Course", #class_name
      "Courses lectured in term", #header
      "(SELECT COUNT(*) FROM lectures b1 WHERE b1.term_id = arg_value AND b1.course_id = a0.id)>0", #where_str_
      "Term",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(true,\"desc\", false, \"\", \"\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false#group_selector_
      )),
     ExtendedFilter.new(:external_filter, ExternalFilter.new("Course", #class_name
      "Courses not lectured in term", #header
      "(SELECT COUNT(*) FROM lectures b1 WHERE b1.term_id = arg_value AND b1.course_id = a0.id)=0", #where_str_
      "Term",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(true,\"desc\", false, \"\", \"\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false#group_selector_
      )),
      ExtendedFilter.new(:external_filter, ExternalFilter.new("Course", #class_name
      "Courses tutored in term", #header
      "(SELECT COUNT(*) FROM tutorial_schedules b1 WHERE b1.term_id = arg_value AND b1.course_id = a0.id)>0", #where_str_
      "Term",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(true,\"desc\", false, \"\", \"\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false#group_selector_
      )),
      ExtendedFilter.new(:external_filter, ExternalFilter.new("Course", #class_name
      "Courses not tutored in term", #header
      "(SELECT COUNT(*) FROM tutorial_schedules b1 WHERE b1.term_id = arg_value AND b1.course_id = a0.id)=0", #where_str_
      "Term",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(true,\"desc\", false, \"\", \"\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false#group_selector_
      ))
  ];
  has_many :tutorial_schedules, :class_name => "TutorialSchedule", :dependent => :destroy
  has_many :lectures, :class_name => "Lecture", :dependent => :destroy
end

class Attendee < ActiveRecord::Base
    ExtendedFilters = [
      ExtendedFilter.new(:external_filter, ExternalFilter.new("Attendee", #class_name
      "Attendees in group", #header
      "(SELECT COUNT(*) FROM group_attendees b1 WHERE b1.group_id = arg_value AND b1.attendee_id = a0.id)>0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(false,\"asc\", false, \"\", \"a0.table_name ='attendees' AND (a0.owner_id = user_id_ OR administrator_ OR ((SELECT COUNT(*) FROM group_users a2 WHERE a2.user_id = user_id_ AND a2.group_id = a0.readers_id) > 0 AND a0.private = FALSE) )\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false#group_selector_
      )),
          ExtendedFilter.new(:external_filter, ExternalFilter.new("Attendee", #class_name
      "Attendees in group", #header
      "(SELECT COUNT(*) FROM group_attendees b1 WHERE b1.group_id = arg_value AND b1.attendee_id = a0.id)=0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(false,\"asc\", false, \"\", \"a0.table_name ='attendees' AND (a0.owner_id = user_id_ OR administrator_ OR ((SELECT COUNT(*) FROM group_users a2 WHERE a2.user_id = user_id_ AND a2.group_id = a0.readers_id) > 0 AND a0.private = FALSE) )\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false#group_selector_
      )),
           ExtendedFilter.new(:external_filter, ExternalFilter.new("Attendee", #class_name
      "Attendees in some group", #header
      "(SELECT COUNT(*) FROM group_attendees b1 WHERE b1.attendee_id = a0.id)>0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "[]", #argument_selector_str_
      false,#allow_multiple_arguments
      false#group_selector_
      )),
           ExtendedFilter.new(:external_filter, ExternalFilter.new("Attendee", #class_name
      "Attendees not in any group", #header
      "(SELECT COUNT(*) FROM group_attendees b1 WHERE b1.attendee_id = a0.id)=0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "[]", #argument_selector_str_
      false,#allow_multiple_arguments
      false#group_selector_
      )),
    ExtendedFilter.new(:external_filter, ExternalFilter.new("Attendee", #class_name
      "Attendee person", #header
      "(a0.person_id = arg_value)", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      false,#allow_multiple_arguments
      true#group_selector_
      )),
       ExtendedFilter.new(:external_filter, ExternalFilter.new("Attendee", #class_name
      "Attendee who is not person", #header
      "(a0.person_id != arg_value)", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true#group_selector_
      )),
      ExtendedFilter.new(:external_filter, ExternalFilter.new("Attendee", #class_name
      "Lectured by person", #header
      "(SELECT COUNT(*) FROM lectures b1 WHERE b1.person_id = arg_value AND a0.lecture_id = b1.id )>0", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      false,#allow_multiple_arguments
      true#group_selector_
      )),
      ExtendedFilter.new(:external_filter, ExternalFilter.new("Attendee", #class_name
      "Not lectured by person", #header
      "(SELECT COUNT(*) FROM lectures b1 WHERE b1.person_id = arg_value AND a0.lecture_id = b1.id )=0", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      false,#allow_multiple_arguments
      true#group_selector_
      )),
       ExtendedFilter.new(:external_filter, ExternalFilter.new("Attendee", #class_name
      "Given in term", #header
      "(SELECT COUNT(*) FROM lectures b1 WHERE b1.term_id = arg_value AND a0.lecture_id = b1.id )>0", #where_str_
      "Term",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(true,\"desc\", false, \"\", \"\")", #argument_selector_str_
      false,#allow_multiple_arguments
      false#group_selector_
      )),
      ExtendedFilter.new(:external_filter, ExternalFilter.new("Attendee", #class_name
      "Not given in term", #header
      "(SELECT COUNT(*) FROM lectures b1 WHERE b1.term_id = arg_value AND a0.lecture_id = b1.id )=0", #where_str_
      "Term",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(true,\"desc\", false, \"\", \"\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false#group_selector_
      ))
  ];USER_WHERE_STR = "";
    belongs_to :student,  :class_name => "Person", :foreign_key => "person_id"
    belongs_to :lecture,  :class_name => "Lecture", :foreign_key => "lecture_id"
end

class Lecture < ActiveRecord::Base
   USER_WHERE_STR = "";
   ExtendedFilters = [
       ExtendedFilter.new(:subquery, SubQuery.new("Number of students at lecture", "number_of_students_at_lecture" ,
      "(SELECT COUNT(*) FROM attendees b1 WHERE b1.lecture_id = a0.id)", "")),
   ExtendedFilter.new(:external_filter, ExternalFilter.new("Lecture", #class_name
      "Lectures in group", #header
      "(SELECT COUNT(*) FROM group_lectures b1 WHERE b1.group_id = arg_value AND b1.lecture_id = a0.id)>0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(false,\"asc\", false, \"\", \"a0.table_name ='lectures' AND (a0.owner_id = user_id_ OR administrator_ OR ((SELECT COUNT(*) FROM group_users a2 WHERE a2.user_id = user_id_ AND a2.group_id = a0.readers_id) > 0 AND a0.private = FALSE) )\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false#group_selector_
      )),
   ExtendedFilter.new(:external_filter, ExternalFilter.new("Lecture", #class_name
      "Lectures not in group", #header
      "(SELECT COUNT(*) FROM group_lectures b1 WHERE b1.group_id = arg_value AND b1.lecture_id = a0.id)=0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(false,\"asc\", false, \"\", \"a0.table_name ='lectures' AND (a0.owner_id = user_id_ OR administrator_ OR ((SELECT COUNT(*) FROM group_users a2 WHERE a2.user_id = user_id_ AND a2.group_id = a0.readers_id) > 0 AND a0.private = FALSE) )\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false#group_selector_
      )),
           ExtendedFilter.new(:external_filter, ExternalFilter.new("Lecture", #class_name
      "Lectures in some group", #header
      "(SELECT COUNT(*) FROM group_lectures b1 WHERE b1.lecture_id = a0.id)>0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "[]", #argument_selector_str_
      false,#allow_multiple_arguments
      false#group_selector_
      )),
           ExtendedFilter.new(:external_filter, ExternalFilter.new("Lecture", #class_name
      "Lectures not in any group", #header
      "(SELECT COUNT(*) FROM group_lectures b1 WHERE b1.lecture_id = a0.id)=0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "[]", #argument_selector_str_
      false,#allow_multiple_arguments
      false#group_selector_
      )),
   ExtendedFilter.new(:external_filter, ExternalFilter.new("Lecture", #class_name
      "Lectures attended by person", #header
      "(SELECT COUNT(*) FROM attendees b1 WHERE b1.person_id = arg_value AND b1.lecture_id = a0.id)>0", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true#group_selector_
      )),
   ExtendedFilter.new(:external_filter, ExternalFilter.new("Lecture", #class_name
      "Lectures not attended by person", #header
      "(SELECT COUNT(*) FROM attendees b1 WHERE b1.person_id = arg_value AND b1.lecture_id = a0.id)=0", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true#group_selector_
      )),
   ExtendedFilter.new(:external_filter, ExternalFilter.new("Lecture", #class_name
      "Lectures taught by person", #header
      "(a0.person_id = arg_value)", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true#group_selector_
      )),
   ExtendedFilter.new(:external_filter, ExternalFilter.new("Lecture", #class_name
      "Lectures not taught by person", #header
      "(a0.person_id != arg_value)", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true#group_selector_
      )),
   ExtendedFilter.new(:external_filter, ExternalFilter.new("Lecture", #class_name
      "Lectures taught in term", #header
      "(a0.term_id = arg_value)", #where_str_
      "Term",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(true,\"desc\", false, \"\", \"\")", #argument_selector_str_
      false,#allow_multiple_arguments
      false#group_selector_
      )),
   ExtendedFilter.new(:external_filter, ExternalFilter.new("Lecture", #class_name
      "Lectures not taught in term", #header
      "(a0.term_id != arg_value)", #where_str_
      "Term",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(true,\"desc\", false, \"\", \"\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false#group_selector_
      ))
];
    belongs_to :lecturer, :class_name => "Person", :foreign_key => "person_id"
    belongs_to :course, :class_name => "Course", :foreign_key => "course_id"
    belongs_to :term, :class_name => "Term", :foreign_key => "term_id"
    belongs_to :day, :class_name => "Day", :foreign_key => "day_id"
    belongs_to :location, :class_name => "Location", :foreign_key => "location_id"
    has_many :attendees, :class_name => "Attendee", :dependent => :destroy
    has_many :students, :class_name => "Person", :through => :attendees
    
end

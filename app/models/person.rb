class Person < ActiveRecord::Base
  


USER_WHERE_STR = "";
  ExtendedFilters = [
    ExtendedFilter.new(:subquery, SubQuery.new("Number of lecture courses attended", "number_of_lectures_courses_attended" ,
      "(SELECT COUNT(*) FROM lectures b1 INNER JOIN attendees b2 ON b2.lecture_id = b1.id WHERE b1.term_id = current_argument_value AND b2.person_id = a0.id)", "Term")),
  ExtendedFilter.new(:subquery, SubQuery.new("Number of lectures attended", "number_of_lectures_attended" ,
      "(SELECT COALESCE(SUM(b1.number_of_lectures),0) FROM lectures b1 INNER JOIN attendees b2 ON b2.lecture_id = b1.id WHERE b1.term_id = current_argument_value AND b2.person_id = a0.id)", "Term")),
  ExtendedFilter.new(:subquery, SubQuery.new("Number of classes attended", "number_of_classes_attended" ,
      "(SELECT COALESCE(SUM(b1.number_of_classes),0) FROM lectures b1 INNER JOIN attendees b2 ON b2.lecture_id = b1.id WHERE b1.term_id = current_argument_value AND b2.person_id = a0.id)", "Term")),
  ExtendedFilter.new(:subquery, SubQuery.new("Number of lecture hours attended", "number_of_lecture_hours_attended" ,
      "(SELECT COALESCE(SUM(b1.hours),0) FROM lectures b1 INNER JOIN attendees b2 ON b2.lecture_id = b1.id WHERE b1.term_id = current_argument_value AND b2.person_id = a0.id)", "Term")),
  ExtendedFilter.new(:subquery, SubQuery.new("Number of tutorial courses attended", "number_of_tutorial_courses_hours_attended" ,
      "(SELECT COUNT(*) FROM tutorial_schedules b1 INNER JOIN tutorials b2 ON b2.tutorial_schedule_id = b1.id WHERE b1.term_id = current_argument_value AND b2.person_id = a0.id)", "Term")),
  ExtendedFilter.new(:subquery, SubQuery.new("Number of tutorials attended", "number_of_tutorials_attended" ,
      "(SELECT COALESCE(SUM(b1.number_of_tutorials),0) FROM tutorial_schedules b1 INNER JOIN tutorials b2 ON b2.tutorial_schedule_id = b1.id WHERE b1.term_id = current_argument_value AND b2.person_id = a0.id)", "Term")),
  ExtendedFilter.new(:subquery, SubQuery.new("Number of tutorial hours attended", "number_of_tutorial_hours_attended" ,
      "(SELECT COALESCE(SUM(b1.number_of_tutorial_hours),0) FROM tutorial_schedules b1 INNER JOIN tutorials b2 ON b2.tutorial_schedule_id = b1.id WHERE b1.term_id = current_argument_value AND b2.person_id = a0.id)", "Term")),
  ExtendedFilter.new(:subquery, SubQuery.new("Number of lecture courses taught", "number_of_lecture_coureses_taught" ,
      "(SELECT COUNT(*) FROM lectures b1 WHERE b1.term_id = current_argument_value AND b1.person_id = a0.id)", "Term")),
  ExtendedFilter.new(:subquery, SubQuery.new("Number of lectures taught", "number_of_lectures_taught" ,
      "(SELECT COALESCE(SUM(b1.number_of_lectures),0) FROM lectures b1 WHERE b1.term_id = current_argument_value AND b1.person_id = a0.id)", "Term")),
  ExtendedFilter.new(:subquery, SubQuery.new("Number of classes taught", "number_of_classes_taught" ,
      "(SELECT COALESCE(SUM(b1.number_of_classes),0) FROM lectures b1 WHERE b1.term_id = current_argument_value AND b1.person_id = a0.id)", "Term")),
  ExtendedFilter.new(:subquery, SubQuery.new("Number of lecture hours taught", "number_of_lecture_hours_taught" ,
      "(SELECT COALESCE(SUM(b1.hours),0) FROM lectures b1 WHERE b1.term_id = current_argument_value AND b1.person_id = a0.id)", "Term")),
  ExtendedFilter.new(:subquery, SubQuery.new("Number of tutorial courses taught", "number_of_tutorial_courses_taught" ,
      "(SELECT COUNT(*) FROM tutorial_schedules b1 WHERE b1.term_id = current_argument_value AND b1.person_id = a0.id)", "Term")),
  ExtendedFilter.new(:subquery, SubQuery.new("Number of tutorials taught", "number_of_tutorials_taught" ,
      "(SELECT COALESCE(SUM(b1.number_of_tutorials),0) FROM tutorial_schedules b1 WHERE b1.term_id = current_argument_value AND b1.person_id = a0.id)", "Term")),
  ExtendedFilter.new(:subquery, SubQuery.new("Number of tutorial hours taught", "number_of_tutorial_hours_taught" ,
      "(SELECT COALESCE(SUM(a1.number_of_tutorial_hours),0) FROM tutorial_schedules a1 WHERE a1.term_id = current_argument_value AND a1.person_id = a0.id)", "Term")),
  ExtendedFilter.new(:subquery, SubQuery.new("Maxiumum tutorials in term", "max_tutorials_in_term" ,
      "(SELECT SUM(a1.max_tutorials) FROM maximum_tutorials a1 WHERE a1.term_id = current_argument_value AND a1.person_id = a0.id)", "Term")),
  ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People in group", #header
      "(SELECT COUNT(*) FROM group_people b1 WHERE b1.person_id = a0.id AND b1.group_id = arg_value)>0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(false,\"asc\", false, \"\", \"a0.table_name ='people' AND (a0.owner_id = user_id_ OR administrator_ OR ((SELECT COUNT(*) FROM group_users a2 WHERE a2.user_id = user_id_ AND a2.group_id = a0.readers_id) > 0 AND a0.private = FALSE) )\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false#group_selector_
      )),
  ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People not in group", #header
      "(SELECT COUNT(*) FROM group_people b1 WHERE b1.person_id = a0.id AND b1.group_id = arg_value)=0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(false,\"asc\", false, \"\", \"a0.table_name ='people' AND (a0.owner_id = user_id_ OR administrator_ OR ((SELECT COUNT(*) FROM group_users a2 WHERE a2.user_id = user_id_ AND a2.group_id = a0.readers_id) > 0 AND a0.private = FALSE) )\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false#group_selector_
     
    )),
     ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People in some group", #header
      "(SELECT COUNT(*) FROM group_people b1 WHERE b1.person_id = a0.id)>0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "[]", #argument_selector_str_
      false,#allow_multiple_arguments
      false#group_selector_
      )),
           ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People not in any group", #header
      "(SELECT COUNT(*) FROM group_people b1 WHERE b1.person_id = a0.id)=0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "[]", #argument_selector_str_
      false,#allow_multiple_arguments
      false#group_selector_
      )),
  ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have attended lectures", #header
      "(SELECT COUNT(*) FROM attendees b1 WHERE b1.person_id = a0.id AND b1.lecture_id = arg_value)>0", #where_str_
      "Lecture",#argument_class_
      "GroupLecture",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true #group_selector_
    )),
  ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have not attended lectures", #header
      "(SELECT COUNT(*) FROM attendees b1 WHERE b1.person_id = a0.id AND b1.lecture_id = arg_value)=0", #where_str_
      "Lecture",#argument_class_
      "GroupLecture",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true #group_selector_
    )),
  ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People to be examined on lectures", #header
      "(SELECT COUNT(*) FROM attendees b1 WHERE b1.person_id = a0.id AND b1.lecture_id = arg_value AND b1.examined = true )>0 ", #where_str_
      "Lecture",#argument_class_
      "GroupLecture",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true #group_selector_
    )),
  ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People not to be examined on lectures", #header
      "(SELECT COUNT(*) FROM attendees b1 WHERE b1.person_id = a0.id AND b1.lecture_id = arg_value AND b1.examined = false)>0 ", #where_str_
      "Lecture",#argument_class_
      "GroupLecture",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true #group_selector_
    )),
   ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who must attend lectures", #header
      "(SELECT COUNT(*) FROM attendees b1 WHERE b1.person_id = a0.id AND b1.lecture_id = arg_value AND b1.compulsory = true)>0 ", #where_str_
      "Lecture",#argument_class_
      "GroupLecture",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true #group_selector_
    )),
  ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who optionally attend lectures", #header
      "(SELECT COUNT(*) FROM attendees b1 WHERE b1.person_id = a0.id AND b1.lecture_id = arg_value AND b1.compulsory = false)>0 ", #where_str_
      "Lecture",#argument_class_
      "GroupLecture",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true #group_selector_
    )),
  ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have attended course lectures", #header
      "(SELECT COUNT(*) FROM attendees b1 INNER JOIN lectures b2 ON b2.id = b1.lecture_id WHERE b2.course_id = arg_value AND b1.person_id = a0.id)>0", #where_str_
      "Course",#argument_class_
      "GroupCourse",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true #group_selector_
    )),
  ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have not attended course lectures", #header
      "(SELECT COUNT(*) FROM attendees b1 INNER JOIN lectures b2 ON b2.id = b1.lecture_id WHERE b2.course_id = arg_value AND b1.person_id = a0.id)=0", #where_str_
      "Course",#argument_class_
      "GroupCourse",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true #group_selector_
    )),
  ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have attended course tutorials", #header
      "(SELECT COUNT(*) FROM tutorials b1 INNER JOIN tutorial_schedules b2 ON b2.id = b1.tutorial_schedule_id WHERE b2.course_id = arg_value AND b1.person_id = a0.id)>0", #where_str_
      "Course",#argument_class_
      "GroupCourse",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true #group_selector_
    )),
    ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have not attended course tutorials", #header
      "(SELECT COUNT(*) FROM tutorials b1 INNER JOIN tutorial_schedules b2 ON b2.id = b1.tutorial_schedule_id WHERE b2.course_id = arg_value AND b1.person_id = a0.id)=0", #where_str_
      "Course",#argument_class_
      "GroupCourse",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true #group_selector_
    )),
    ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have been lectured by person", #header
      "(SELECT COUNT(*) FROM attendees b1 INNER JOIN lectures b2 ON b2.id = b1.lecture_id WHERE b1.person_id = a0.id AND b2.person_id = arg_value)>0", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true #group_selector_
    )),
      ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have not been lectured by person", #header
      "(SELECT COUNT(*) FROM attendees b1 INNER JOIN lectures b2 ON b2.id = b1.lecture_id WHERE b1.person_id = a0.id AND b2.person_id = arg_value)=0", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true #group_selector_
    )),
      ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have been tutored by person", #header
      "(SELECT COUNT(*) FROM tutorials b1 INNER JOIN tutorial_schedules b2 ON b2.id = b1.tutorial_schedule_id WHERE b1.person_id = a0.id AND b2.person_id = arg_value)>0", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true #group_selector_
    )),
        ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have not been tutored by person", #header
      "(SELECT COUNT(*) FROM tutorials b1 INNER JOIN tutorial_schedules b2 ON b2.id = b1.tutorial_schedule_id WHERE b1.person_id = a0.id AND b2.person_id = arg_value)=0", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true #group_selector_
    )),
   ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have been lectured in term", #header
      "(SELECT COUNT(*) FROM attendees b1 INNER JOIN lectures b2 ON b2.id = b1.lecture_id WHERE b1.person_id = a0.id AND b2.term_id = arg_value)>0", #where_str_
      "Term",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(true,\"desc\", false, \"\", \"\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false #group_selector_
    )),
  ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have not been lectured in term", #header
      "(SELECT COUNT(*) FROM attendees b1 INNER JOIN lectures b2 ON b2.id = b1.lecture_id WHERE b1.person_id = a0.id AND b2.term_id = arg_value)=0", #where_str_
      "Term",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(true,\"desc\", false, \"\", \"\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false #group_selector_
    )),
  ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have been tutored in term", #header
      "(SELECT COUNT(*) FROM tutorials b1 INNER JOIN tutorial_schedules b2 ON b2.id = b1.tutorial_schedule_id WHERE b1.person_id = a0.id AND b2.term_id = arg_value)>0", #where_str_
      "Term",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(true,\"desc\", false, \"\", \"\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false #group_selector_
    )),
  ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have not been tutored in term", #header
      "(SELECT COUNT(*) FROM tutorials b1 INNER JOIN tutorial_schedules b2 ON b2.id = b1.tutorial_schedule_id WHERE b1.person_id = a0.id AND b2.term_id = arg_value)=0", #where_str_
      "Term",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(true,\"desc\", false, \"\", \"\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false #group_selector_
    )),
  ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have lectured course", #header
      "(SELECT COUNT(*) FROM lectures b1 WHERE b1.course_id = arg_value AND b1.person_id = a0.id)>0", #where_str_
      "Course",#argument_class_
      "GroupCourse",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true #group_selector_
    )),
  ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have not lectured course", #header
      "(SELECT COUNT(*) FROM lectures b1 WHERE b1.course_id = arg_value AND b1.person_id = a0.id)=0", #where_str_
      "Course",#argument_class_
      "GroupCourse",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true #group_selector_
    )),
  ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have tutored course", #header
      "(SELECT COUNT(*) FROM tutorial_schedules b1 WHERE b1.course_id = arg_value AND b1.person_id = a0.id)>0", #where_str_
      "Course",#argument_class_
      "GroupCourse",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true #group_selector_
    )),
    ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have not tutored course", #header
      "(SELECT COUNT(*) FROM tutorial_schedules b1 WHERE b1.course_id = arg_value AND b1.person_id = a0.id)=0", #where_str_
      "Course",#argument_class_
      "GroupCourse",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true #group_selector_
    )),
      ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have lectured person", #header
      "(SELECT COUNT(*) FROM attendees b1 INNER JOIN lectures b2 ON b2.id = b1.lecture_id WHERE b2.person_id = a0.id AND b1.person_id = arg_value)>0", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true #group_selector_
    )),
        ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have not lectured person", #header
      "(SELECT COUNT(*) FROM attendees b1 INNER JOIN lectures b2 ON b2.id = b1.lecture_id WHERE b2.person_id = a0.id AND b1.person_id = arg_value)=0", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true #group_selector_
    )),
      ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have tutored person", #header
      "(SELECT COUNT(*) FROM tutorials b1 INNER JOIN tutorial_schedules b2 ON b2.id = b1.tutorial_schedule_id WHERE b2.person_id = a0.id AND b1.person_id = arg_value)>0", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true #group_selector_
    )),
    ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have not tutored person", #header
      "(SELECT COUNT(*) FROM tutorials b1 INNER JOIN tutorial_schedules b2 ON b2.id = b1.tutorial_schedule_id WHERE b2.person_id = a0.id AND b1.person_id = arg_value)=0", #where_str_
      "Person",#argument_class_
      "GroupPerson",#group_class_
      "@selection_controller.GetSelectFields(member_id, group_id, member_attribute_name, @class_search_controller,false)", #argument_selector_str_
      true,#allow_multiple_arguments
      true #group_selector_
    )),
    ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have lectured in term", #header
      "(SELECT COUNT(*) FROM lectures b1 WHERE b1.person_id = a0.id AND b1.term_id = arg_value)>0", #where_str_
      "Term",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(true,\"desc\", false, \"\", \"\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false #group_selector_
    )),
      ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have not lectured in term", #header
      "(SELECT COUNT(*) FROM lectures b1 WHERE b1.person_id = a0.id AND b1.term_id = arg_value)=0", #where_str_
      "Term",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(true,\"desc\", false, \"\", \"\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false #group_selector_
    )),
      ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have tutored in term", #header
      "(SELECT COUNT(*) FROM tutorial_schedules b1 WHERE b1.person_id = a0.id AND b1.term_id = arg_value)>0", #where_str_
      "Term",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(true,\"desc\", false, \"\", \"\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false #group_selector_
    )),
      ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who have not tutored in term", #header
      "(SELECT COUNT(*) FROM tutorial_schedules b1 WHERE b1.person_id = a0.id AND b1.term_id = arg_value)=0", #where_str_
      "Term",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(true,\"desc\", false, \"\", \"\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false #group_selector_
    )),
     ExtendedFilter.new(:external_filter, ExternalFilter.new("Person", #class_name
      "People who tutoring too much in term", #header
      "(SELECT COALESCE(SUM(a1.number_of_tutorial_hours),0) FROM tutorial_schedules a1 WHERE a1.term_id = arg_value AND a1.person_id = a0.id)> (SELECT COALESCE(SUM(a1.max_tutorials),99999) FROM maximum_tutorials a1 WHERE a1.term_id = arg_value AND a1.person_id = a0.id)", #where_str_
      "Term",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(true,\"desc\", false, \"\", \"\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false #group_selector_
    ))
  ];


  has_many :tutorial_schedules, :class_name =>"TutorialSchedule", :dependent => :destroy
  has_many :tutorial_attendees, :class_name => "Tutorial", :dependent => :destroy
  has_many :lecture_schedules, :class_name =>"Lecture",  :dependent => :destroy
  has_many :attendees, :class_name => "Attendee", :dependent => :destroy
  has_many :group_people, :class_name => "GroupPerson", :dependent => :destroy
  has_many :users, :class_name => "User", :dependent => :destroy


  belongs_to :entry_term, :class_name => "Term", :foreign_key => "entry_term_id"
  belongs_to :institution, :class_name => "Institution", :foreign_key => "institution_id"
  belongs_to :religious_house, :class_name => "Institution", :foreign_key => "religious_house_id"

  has_many :groups, :class_name => "Group", :through => :group_people
  has_many :lectures, :class_name => "Lecture", :through => :attendees  do
    def term_lecture_hours(term_id)
      term_lectures = find :all, :conditions => ['term_id = ?' , term_id]
      hours = 0;
      for l in term_lectures
        hours = hours + l.hours;
      end
      return hours
    end
    def term_lecture_number(term_id)
      term_lectures = find :all, :conditions => ['term_id = ?' , term_id]
      return term_lectures.length
    end
  end

  has_many :tutorial_schedules, :class_name => "TutorialSchedule", :through => :tutorial_attendees

end

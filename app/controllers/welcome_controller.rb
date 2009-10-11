class WelcomeController < ApplicationController


  DisplayPageCl = DisplayPagesClass.new;

  DisplayPageCl.DisplayPages["Person"]=[];
 
  DisplayPageCl.DisplayPages["Person"]<< PageView.new("people", "Person", "Select action", true,
    [ DisplayDiv.new("welcome_Person", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"], [".select-cell",".select_options",".update-cell", ".delete-cell"],""),
      DisplayDiv.new("Person_action_div", "first_menu_div", [], [], [], [".max_tutorials_div",".group_div", ".delete_div"],"")]);
  DisplayPageCl.DisplayPages["Person"]<< PageView.new("people", "Person",  "Edit",true,
    [ DisplayDiv.new("welcome_Person", "first_div", ["content_div"],["two_column_div"], [".update-cell",".dummy-cell"], [".select_options", ".select-cell", ".delete-cell"],""),
      DisplayDiv.new("Person_action_div", "first_menu_div", [], [], [], [".max_tutorials_div",".group_div", ".delete_div"],"")]);
  DisplayPageCl.DisplayPages["Person"]<<  PageView.new("people", "Person",  "Create group",true,
    [ DisplayDiv.new("welcome_Person", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], [".update-cell",".dummy-cell", ".delete-cell"],""),
      DisplayDiv.new("Person_action_div", "first_menu_div", [], [], [".group_div"], [".max_tutorials_div",".delete_div"],"")]);
  DisplayPageCl.DisplayPages["Person"]<< PageView.new("people", "Person", "Delete people",true,
    [ DisplayDiv.new("welcome_Person", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell",  ".delete-cell"], [".update-cell",".dummy-cell"],""),
      DisplayDiv.new("Person_action_div", "first_menu_div", [], [], [".delete_div"], [".max_tutorials_div",".group_div"],"")]);
  DisplayPageCl.DisplayPages["Person"]<< PageView.new("people", "Person", "Add to groups",true,
    [ DisplayDiv.new("welcome_Person", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], [".remove-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Person_action_div", "first_menu_div", [], [], [], [".max_tutorials_div",".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('people'); set_action_class('Person','Group','add_to_groups')")]);
  DisplayPageCl.DisplayPages["Person"]<< PageView.new("people", "Person", "Remove from groups",true,
    [ DisplayDiv.new("welcome_Person", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], [".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Person_action_div", "first_menu_div", [], [], [], [".max_tutorials_div",".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('people'); set_action_class('Person','Group','remove_from_groups')")]);
  DisplayPageCl.DisplayPages["Person"]<<  PageView.new("people", "Person",  "Set Max Tutorials",true,
    [ DisplayDiv.new("welcome_Person", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], [".update-cell",".dummy-cell", ".delete-cell"],""),
      DisplayDiv.new("Person_action_div", "first_menu_div", [], [], [".max_tutorials_div"], [".group_div",".delete_div"],"")]);
  DisplayPageCl.RegisterClasses("Person",["welcome_Person"],[".help-cell",".search_title",  ".default_class"],[".add_attendee_options",".tutorial_assign_title",".willing-cell",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".add_to_lecture_title",".add_to_willing_tutor_title", ".send-cell",".add_to_willing_lecturer_title",".add_to_tutorial_title",".create_emails_title",".remove_from_group_title",".add_to_group_title", ".add-cell", ".remove-cell", ".create-cell",".create-email-cell", ".suggest-cell"]);
  DisplayPageCl.RegisterClasses("Person",["welcome_Group"],[".select_options", ".select-cell"],[".willing-cell",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".default_class",".group_div", ".delete_div", ".search_title",".update-cell",".dummy-cell", ".delete-cell", ".send-cell",".add-cell", ".remove-cell", ".create-cell",".create-email-cell", ".suggest-cell"]);


  DisplayPageCl.DisplayPages["Institution"]=[];
  DisplayPageCl.DisplayPages["Institution"]<<PageView.new("people", "Institution", "Select action", true,
    [ DisplayDiv.new("welcome_Institution", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"], [".select-cell",".select_options",".update-cell", ".delete-cell"],""),
      DisplayDiv.new("Institution_action_div", "first_menu_div", [], [], [], [".group_div", ".delete_div"],"")]);
  DisplayPageCl.DisplayPages["Institution"]<< PageView.new("people", "Institution",  "Edit",true,
    [ DisplayDiv.new("welcome_Institution", "first_div", ["content_div"],["two_column_div"], [".update-cell",".dummy-cell"], [".select_options", ".select-cell", ".delete-cell"],""),
      DisplayDiv.new("Institution_action_div", "first_menu_div", [], [], [], [".group_div", ".delete_div"],"")]);
  DisplayPageCl.DisplayPages["Institution"]<<  PageView.new("people", "Institution",  "Create group",true,
    [ DisplayDiv.new("welcome_Institution", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], [".update-cell",".dummy-cell", ".delete-cell"],""),
      DisplayDiv.new("Institution_action_div", "first_menu_div", [], [], [".group_div"], [".delete_div"],"")]);
  DisplayPageCl.DisplayPages["Institution"]<< PageView.new("people", "Institution", "Delete institutions",true,
    [ DisplayDiv.new("welcome_Institution", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell",  ".delete-cell"], [".update-cell",".dummy-cell"],""),
      DisplayDiv.new("Institution_action_div", "first_menu_div", [], [], [".delete_div"], [".group_div"],"")]);
  DisplayPageCl.DisplayPages["Institution"]<< PageView.new("people", "Institution", "Add to groups",true,
    [ DisplayDiv.new("welcome_Institution", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], [".remove-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Institution_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('institutions'); set_action_class('Institution','Group','add_to_groups')")]);
  DisplayPageCl.DisplayPages["Institution"]<< PageView.new("people", "Institution", "Remove from groups",true,
    [ DisplayDiv.new("welcome_Institution", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], [".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Institution_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('institutions'); set_action_class('Institution','Group','remove_from_groups')")]);
  DisplayPageCl.RegisterClasses("Institution",["welcome_Institution"],[".search_title",  ".default_class"],[".willing-cell",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".remove_from_group_title",".add_to_group_title", ".add-cell", ".remove-cell", ".create-cell", ".send-cell",".create-email-cell", ".suggest-cell"]);
  DisplayPageCl.RegisterClasses("Institution",["welcome_Group"],[".select_options", ".select-cell"],[".willing-cell",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".default_class",".group_div", ".delete_div", ".search_title",".update-cell",".dummy-cell", ".delete-cell", ".send-cell",".add-cell", ".remove-cell", ".create-cell",".create-email-cell", ".suggest-cell"]);

  DisplayPageCl.DisplayPages["Course"]=[];
  DisplayPageCl.DisplayPages["Course"]<<  PageView.new("courses","Course",  "Select Action",true,
     [ DisplayDiv.new("welcome_Course", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"], [".select_options", ".select-cell",".update-cell", ".delete-cell"],""),
      DisplayDiv.new("Course_action_div", "first_menu_div", [], [], [], [],"")]);
  DisplayPageCl.DisplayPages["Course"]<<  PageView.new("courses", "Course",  "Edit",true,
    [ DisplayDiv.new("welcome_Course", "first_div", ["content_div"],["two_column_div"], [".update-cell",".dummy-cell"], [".select_options", ".select-cell", ".delete-cell"],""),
      DisplayDiv.new("Course_action_div", "first_menu_div", [], [], [], [],"")]);
  DisplayPageCl.DisplayPages["Course"]<<  PageView.new("courses", "Course",  "Create lectures",true,
    [ DisplayDiv.new("welcome_Course", "first_div", ["content_div"],["two_column_div"], [".create-cell",".suggest-cell",".dummy-cell"], [".create-email-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"]," set_action_class('Course','','create_lecture_from_course');set_suggestion_class('Lecture','Course')"),
      DisplayDiv.new("Course_action_div", "first_menu_div", [], [], [".schedule_div"], [],"")]);
  DisplayPageCl.DisplayPages["Course"]<<  PageView.new("courses", "Course",  "Create tutorials",true,
    [ DisplayDiv.new("welcome_Course", "first_div_1", ["two_column_div"],["content_div"], [".create-cell",".suggest-cell",".dummy-cell"], [".create-email-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"]," set_action_class('Course','Person','create_tutorials_from_course');set_suggestion_class('Tutorial','Course')"),
      DisplayDiv.new("Course_action_div", "first_menu_div", [], [], [".tutorial_schedule_div"], [],""),
      DisplayDiv.new("welcome_Person", "first_div_2", [], ["Person_action_div"], [".add_to_tutorial_title"], [".add_to_willing_tutor_title",".add_to_willing_lecturer_title",".add_attendee_options", ".add_to_group_title",".add_to_lecture_title",".remove_from_group_title"],"set_double_scroll();")]);
  DisplayPageCl.DisplayPages["Course"]<<  PageView.new("courses", "Course",  "Add Willing Tutors",true,
    [ DisplayDiv.new("welcome_Course", "first_div_1", ["two_column_div"],["content_div"], [".select_options", ".select-cell"], [".create-cell",".create-email-cell",".dummy-cell",".suggest-cell",".update-cell", ".delete-cell"]," set_action_class('Course','Person','make_willing_tutor')"),
      DisplayDiv.new("Course_action_div", "first_menu_div", [], [], [], [],""),
      DisplayDiv.new("welcome_Person", "first_div_2", [], ["Person_action_div"], [".dummy-cell",".willing-cell",".add_to_willing_tutor_title"], [".select_options", ".select-cell",".add_to_willing_lecturer_title",".add_to_tutorial_title",".create_emails_title",".add_attendee_options", ".add_to_group_title",".add_to_lecture_title",".remove_from_group_title"],"set_double_scroll();")]);
  DisplayPageCl.DisplayPages["Course"]<<  PageView.new("courses", "Course",  "Add Willing Lecturers",true,
    [ DisplayDiv.new("welcome_Course", "first_div_1", ["two_column_div"],["content_div"], [".select_options", ".select-cell"], [".dummy-cell",".create-cell",".create-email-cell",".suggest-cell",".update-cell", ".delete-cell"]," set_action_class('Course','Person','make_willing_lecturer')"),
      DisplayDiv.new("Course_action_div", "first_menu_div", [], [], [], [],""),
      DisplayDiv.new("welcome_Person", "first_div_2", [], ["Person_action_div"], [".dummy-cell",".add_to_willing_lecturer_title",".willing-cell"], [".select_options", ".select-cell",".add_to_willing_tutor_title",".add_to_tutorial_title",".create_emails_title",".add_attendee_options", ".add_to_group_title",".add_to_lecture_title",".remove_from_group_title"],"set_double_scroll();")]);
  DisplayPageCl.DisplayPages["Course"]<< PageView.new("courses", "Course",  "Create group",true,
    [ DisplayDiv.new("welcome_Course", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], [".update-cell",".dummy-cell", ".delete-cell"],""),
      DisplayDiv.new("Course_action_div", "first_menu_div", [], [], [".group_div"], [],"")]);
  DisplayPageCl.DisplayPages["Course"]<< PageView.new("courses", "Course", "Delete courses",true,
    [ DisplayDiv.new("welcome_Course", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".delete-cell"], [".update-cell",".dummy-cell"],""),
      DisplayDiv.new("Course_action_div", "first_menu_div", [], [], [".delete_div"], [],"")]);
  DisplayPageCl.DisplayPages["Course"]<< PageView.new("courses", "Course", "Add to groups",true,
    [ DisplayDiv.new("welcome_Course", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], [".remove-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Course_action_div", "first_menu_div", [], [], [], [],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('courses'); set_action_class('Course','Group','add_to_groups')")]);
  DisplayPageCl.DisplayPages["Course"]<< PageView.new("courses", "Course", "Remove from groups",true,
    [ DisplayDiv.new("welcome_Course", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], [".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Course_action_div", "first_menu_div", [], [], [], [],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [".remove_from_group_title" ], [".add_to_group_title"],"set_double_scroll();group_restriction('courses'); set_action_class('Course','Group','remove_from_groups')")]);
  DisplayPageCl.RegisterClasses("Course",["welcome_Course"],[".search_title",  ".default_class"],[".willing-cell",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".remove_from_group_title",".add_to_group_title", ".add-cell", ".remove-cell", ".create-cell",".create-email-cell", ".suggest-cell", ".send-cell"]);
  DisplayPageCl.RegisterClasses("Course",["Course_action_div"],[],[".tutorial_schedule_div", ".schedule_div", ".delete_div",".group_div"]);
  DisplayPageCl.RegisterClasses("Course",["welcome_Group","welcome_Person"],[".select_options", ".select-cell",".help-cell"],[".willing-cell",".tutorial_assign_title",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".default_class",".group_div", ".delete_div", ".search_title",".update-cell",".dummy-cell", ".delete-cell", ".send-cell",".add-cell", ".remove-cell", ".create-cell",".create-email-cell", ".suggest-cell"]);

  DisplayPageCl.DisplayPages["Lecture"]=[];
  DisplayPageCl.DisplayPages["Lecture"]<< PageView.new("attendees","Lecture", "Select Action",true,
     [ DisplayDiv.new("welcome_Lecture", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"], [".select_options", ".select-cell",".update-cell", ".delete-cell"],""),
      DisplayDiv.new("Lecture_action_div", "first_menu_div", [], [], [], [".group_div", ".delete_div"],"")]);
  DisplayPageCl.DisplayPages["Lecture"]<< PageView.new("attendees", "Lecture", "Edit",true,
    [ DisplayDiv.new("welcome_Lecture", "first_div", ["content_div"],["two_column_div"], [".update-cell",".dummy-cell"], [".select_options", ".select-cell", ".delete-cell"],""),
      DisplayDiv.new("Lecture_action_div", "first_menu_div", [], [], [], [".group_div", ".delete_div"],"")]);
  DisplayPageCl.DisplayPages["Lecture"]<< PageView.new("attendees", "Lecture", "Add attendees",true,
    [ DisplayDiv.new("welcome_Lecture", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], [".remove-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Lecture_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Person", "first_div_2", [], ["Person_action_div"], [".add_attendee_options",".add_to_lecture_title",".toadd-cell",".select-cell",".exam-cell",".compulsory-cell"], [".select_options", ".add_to_group_title",".help-cell",".add_to_willing_tutor_title",".add_to_willing_lecturer_title",".add_to_tutorial_title",".create_emails_title",".remove_from_group_title"],"set_double_scroll();group_restriction('lectures'); set_action_class('Lecture','Person','add_to_lectures')")]);
  DisplayPageCl.DisplayPages["Lecture"]<<  PageView.new("attendees", "Lecture",  "Create group",true,
    [ DisplayDiv.new("welcome_Lecture", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], [".update-cell",".dummy-cell", ".delete-cell"],""),
      DisplayDiv.new("Lecture_action_div", "first_menu_div", [], [], [".group_div"], [".delete_div"],"")]);
  DisplayPageCl.DisplayPages["Lecture"]<<  PageView.new("attendees", "Lecture", "Delete lectures",true,
    [ DisplayDiv.new("welcome_Lecture", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".delete-cell"], [".update-cell",".dummy-cell"],""),
      DisplayDiv.new("Lecture_action_div", "first_menu_div", [], [], [".delete_div"], [".group_div"],"")]);
  DisplayPageCl.DisplayPages["Lecture"]<< PageView.new("attendees", "Lecture", "Add to groups",true,
    [ DisplayDiv.new("welcome_Lecture", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], [".remove-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Lecture_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('lectures'); set_action_class('Lecture','Group','add_to_groups')")]);
  DisplayPageCl.DisplayPages["Lecture"]<< PageView.new("attendees", "Lecture", "Remove from groups",true,
    [ DisplayDiv.new("welcome_Lecture", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], [".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Lecture_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('lectures'); set_action_class('Lecture','Group','remove_from_groups')")]);
  DisplayPageCl.RegisterClasses("Lecture",["welcome_Lecture"],[".search_title",  ".default_class"],[".create_new_entry",".willing-cell",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".remove_from_group_title",".add_to_group_title", ".add-cell", ".remove-cell", ".create-cell",".create-email-cell", ".send-cell", ".suggest-cell"]);
  DisplayPageCl.RegisterClasses("Lecture",["welcome_Group","welcome_Person"],[".select_options", ".select-cell"],[".willing-cell",".tutorial_assign_title",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".default_class",".group_div", ".delete_div", ".search_title",".update-cell",".dummy-cell", ".delete-cell", ".send-cell",".add-cell", ".remove-cell", ".create-cell",".create-email-cell", ".suggest-cell"]);

  DisplayPageCl.DisplayPages["WillingLecturer"]=[];
  DisplayPageCl.DisplayPages["WillingLecturer"]<< PageView.new("attendees","WillingLecturer", "Select Action",true,
     [ DisplayDiv.new("welcome_WillingLecturer", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"], [".select_options", ".select-cell",".update-cell", ".delete-cell"],""),
      DisplayDiv.new("WillingLecturer_action_div", "first_menu_div", [], [], [], [".group_div", ".delete_div"],"")]);
  DisplayPageCl.DisplayPages["WillingLecturer"]<< PageView.new("attendees", "WillingLecturer", "Edit",true,
    [ DisplayDiv.new("welcome_WillingLecturer", "first_div", ["content_div"],["two_column_div"], [".update-cell",".dummy-cell"], [".select_options", ".select-cell", ".delete-cell"],""),
      DisplayDiv.new("WillingLecturer_action_div", "first_menu_div", [], [], [], [".group_div", ".delete_div"],"")]);
  DisplayPageCl.DisplayPages["WillingLecturer"]<<  PageView.new("attendees", "WillingLecturer",  "Create group",true,
    [ DisplayDiv.new("welcome_WillingLecturer", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], [".update-cell",".dummy-cell", ".delete-cell"],""),
      DisplayDiv.new("WillingLecturer_action_div", "first_menu_div", [], [], [".group_div"], [".delete_div"],"")]);
  DisplayPageCl.DisplayPages["WillingLecturer"]<<  PageView.new("attendees", "WillingLecturer", "Delete willing_lecturers",true,
    [ DisplayDiv.new("welcome_WillingLecturer", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".delete-cell"], [".update-cell",".dummy-cell"],""),
      DisplayDiv.new("WillingLecturer_action_div", "first_menu_div", [], [], [".delete_div"], [".group_div"],"")]);
  DisplayPageCl.DisplayPages["WillingLecturer"]<< PageView.new("attendees", "WillingLecturer", "Add to groups",true,
    [ DisplayDiv.new("welcome_WillingLecturer", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], [".remove-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("WillingLecturer_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('willing_lecturers'); set_action_class('WillingLecturer','Group','add_to_groups')")]);
  DisplayPageCl.DisplayPages["WillingLecturer"]<< PageView.new("attendees", "WillingLecturer", "Remove from groups",true,
    [ DisplayDiv.new("welcome_WillingLecturer", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], [".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("WillingLecturer_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('willing_lecturers'); set_action_class('WillingLecturer','Group','remove_from_groups')")]);
  DisplayPageCl.RegisterClasses("WillingLecturer",["welcome_WillingLecturer"],[".search_title",  ".default_class"],[".create_new_entry",".willing-cell",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".remove_from_group_title",".add_to_group_title", ".add-cell", ".remove-cell", ".create-cell",".create-email-cell", ".send-cell", ".suggest-cell"]);
  DisplayPageCl.RegisterClasses("WillingLecturer",["welcome_Group","welcome_Person"],[".select_options", ".select-cell"],[".tutorial_assign_title",".willing-cell",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".default_class",".group_div", ".delete_div", ".search_title",".update-cell",".dummy-cell", ".delete-cell", ".send-cell",".add-cell", ".remove-cell", ".create-cell",".create-email-cell", ".suggest-cell"]);


  DisplayPageCl.DisplayPages["Attendee"]=[];
  DisplayPageCl.DisplayPages["Attendee"]<< PageView.new("attendees","Attendee", "Select Action",true,
     [ DisplayDiv.new("welcome_Attendee", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"], [".select_options", ".select-cell",".update-cell", ".delete-cell"],""),
      DisplayDiv.new("Attendee_action_div", "first_menu_div", [], [], [], [".group_div", ".delete_div"],"")]);
  DisplayPageCl.DisplayPages["Attendee"]<< PageView.new("attendees", "Attendee", "Edit",true,
    [ DisplayDiv.new("welcome_Attendee", "first_div", ["content_div"],["two_column_div"], [".update-cell",".dummy-cell"], [".select_options", ".select-cell", ".delete-cell"],""),
      DisplayDiv.new("Attendee_action_div", "first_menu_div", [], [], [], [".group_div", ".delete_div"],"")]);
  DisplayPageCl.DisplayPages["Attendee"]<<  PageView.new("attendees", "Attendee",  "Create group",true,
    [ DisplayDiv.new("welcome_Attendee", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], [".update-cell",".dummy-cell", ".delete-cell"],""),
      DisplayDiv.new("Attendee_action_div", "first_menu_div", [], [], [".group_div"], [".delete_div"],"")]);
  DisplayPageCl.DisplayPages["Attendee"]<<  PageView.new("attendees", "Attendee", "Delete attendees",true,
    [ DisplayDiv.new("welcome_Attendee", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".delete-cell"], [".update-cell",".dummy-cell"],""),
      DisplayDiv.new("Attendee_action_div", "first_menu_div", [], [], [".delete_div"], [".group_div"],"")]);
  DisplayPageCl.DisplayPages["Attendee"]<< PageView.new("attendees", "Attendee", "Add to groups",true,
    [ DisplayDiv.new("welcome_Attendee", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], [".remove-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Attendee_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('attendees'); set_action_class('Attendee','Group','add_to_groups')")]);
  DisplayPageCl.DisplayPages["Attendee"]<< PageView.new("attendees", "Attendee", "Remove from groups",true,
    [ DisplayDiv.new("welcome_Attendee", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], [".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Attendee_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('attendees'); set_action_class('Attendee','Group','remove_from_groups')")]);
  DisplayPageCl.RegisterClasses("Attendee",["welcome_Attendee"],[".search_title",  ".default_class"],[".create_new_entry",".willing-cell",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".remove_from_group_title",".add_to_group_title", ".add-cell", ".remove-cell", ".send-cell", ".create-cell",".create-email-cell", ".suggest-cell"]);
  DisplayPageCl.RegisterClasses("Attendee",["welcome_Group"],[".select_options", ".select-cell"],[".willing-cell",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".default_class",".group_div", ".delete_div", ".search_title",".update-cell",".dummy-cell", ".delete-cell", ".send-cell",".add-cell", ".remove-cell", ".create-cell",".create-email-cell", ".suggest-cell"]);

  DisplayPageCl.DisplayPages["TutorialSchedule"]=[];
   DisplayPageCl.DisplayPages["TutorialSchedule"]<< PageView.new("tutorials","TutorialSchedule", "Select Action",true,
     [ DisplayDiv.new("welcome_TutorialSchedule", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"], [".select_options", ".select-cell",".update-cell", ".delete-cell"],""),
      DisplayDiv.new("TutorialSchedule_action_div", "first_menu_div", [], [], [], [".group_div", ".delete_div"],"")]);
  DisplayPageCl.DisplayPages["TutorialSchedule"]<< PageView.new("tutorials", "TutorialSchedule",  "Edit",true,
    [ DisplayDiv.new("welcome_TutorialSchedule", "first_div", ["content_div","content_div"],["two_column_div"], [".update-cell",".dummy-cell"], [".select_options", ".select-cell", ".delete-cell"],""),
      DisplayDiv.new("TutorialSchedule_action_div", "first_menu_div", [], [], [], [".group_div", ".delete_div"],"")]);
  DisplayPageCl.DisplayPages["TutorialSchedule"]<< PageView.new("tutorials", "TutorialSchedule", "Assign tutor",true,
    [ DisplayDiv.new("welcome_TutorialSchedule", "first_div_1", ["two_column_div"],["content_div"], [".select_options", ".select-cell"], [".willing-cell",".dummy-cell",".assign-cell",".remove-cell",".update-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("TutorialSchedule_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
    DisplayDiv.new("welcome_Person", "first_div_2", [], ["Person_action_div"], [".assign-cell", ".tutorial_assign_title",".dummy-cell"], [".select_options",".add_attendee_options",".default_class", ".add_to_group_title",".search_title",".add_to_willing_tutor_title",".add_to_willing_lecturer_title",".add_to_tutorial_title",".create_emails_title",".suggest-cell",".toadd-cell",".exam-cell",".compulsory-cell",".remove_from_group_title",".select-cell",".delete-cell",".add-cell", ".remove-cell", ".create-cell",".create-email-cell",".update-cell"],"set_double_scroll();set_action_class('TutorialSchedule','Person','assign_tutor')")]);


  DisplayPageCl.DisplayPages["TutorialSchedule"]<<  PageView.new("tutorials", "TutorialSchedule",  "Create group",true,
    [ DisplayDiv.new("welcome_TutorialSchedule", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], [".update-cell",".dummy-cell", ".delete-cell"],""),
      DisplayDiv.new("TutorialSchedule_action_div", "first_menu_div", [], [], [".group_div"], [".delete_div"],"")]);
  DisplayPageCl.DisplayPages["TutorialSchedule"] <<  PageView.new("tutorials", "TutorialSchedule","Delete tutorial schedules",true,
    [ DisplayDiv.new("welcome_TutorialSchedule", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".delete-cell"], [".update-cell",".dummy-cell"],""),
      DisplayDiv.new("TutorialSchedule_action_div", "first_menu_div", [], [], [".delete_div"], [".group_div"],"")]);
  DisplayPageCl.DisplayPages["TutorialSchedule"]<< PageView.new("tutorials", "TutorialSchedule", "Add to groups",true,
    [ DisplayDiv.new("welcome_TutorialSchedule", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], [".remove-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("TutorialSchedule_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('tutorial_schedules'); set_action_class('TutorialSchedule','Group','add_to_groups')")]);
  DisplayPageCl.DisplayPages["TutorialSchedule"]<< PageView.new("tutorials", "TutorialSchedule", "Remove from groups",true,
    [ DisplayDiv.new("welcome_TutorialSchedule", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], [".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("TutorialSchedule_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('tutorial_schedules'); set_action_class('TutorialSchedule','Group','remove_from_groups')")]);
  DisplayPageCl.RegisterClasses("TutorialSchedule",["welcome_TutorialSchedule"],[".search_title",  ".default_class"],[".create_new_entry",".toadd-cell",".exam-cell",".compulsory-cell",".remove_from_group_title",".add_to_group_title", ".add-cell", ".remove-cell", ".create-cell", ".send-cell",".create-email-cell", ".suggest-cell"]);
  DisplayPageCl.RegisterClasses("TutorialSchedule",["welcome_Group"],[".select_options", ".select-cell"],[".willing-cell",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".default_class",".group_div", ".delete_div", ".search_title",".update-cell",".dummy-cell", ".delete-cell", ".send-cell",".add-cell", ".remove-cell", ".create-cell",".create-email-cell", ".suggest-cell"]);

  DisplayPageCl.DisplayPages["Tutorial"]=[];
   DisplayPageCl.DisplayPages["Tutorial"]<< PageView.new("tutorials","Tutorial", "Select Action",true,
     [ DisplayDiv.new("welcome_Tutorial", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"], [".select_options", ".select-cell",".update-cell", ".delete-cell"],""),
      DisplayDiv.new("Tutorial_action_div", "first_menu_div", [], [], [], [".group_div", ".delete_div"],"")]);
  DisplayPageCl.DisplayPages["Tutorial"]<< PageView.new("tutorials", "Tutorial",  "Edit",true,
    [ DisplayDiv.new("welcome_Tutorial", "first_div", ["content_div","content_div"],["two_column_div"], [".update-cell",".dummy-cell"], [".select_options", ".select-cell", ".delete-cell"],""),
      DisplayDiv.new("Tutorial_action_div", "first_menu_div", [], [], [], [".group_div", ".delete_div"],"")]);
  DisplayPageCl.DisplayPages["Tutorial"]<<  PageView.new("tutorials", "Tutorial",  "Create group",true,
    [ DisplayDiv.new("welcome_Tutorial", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], [".update-cell",".dummy-cell", ".delete-cell"],""),
      DisplayDiv.new("Tutorial_action_div", "first_menu_div", [], [], [".group_div"], [".delete_div"],"")]);
  DisplayPageCl.DisplayPages["Tutorial"] <<  PageView.new("tutorials", "Tutorial","Delete tutorials",true,
    [ DisplayDiv.new("welcome_Tutorial", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".delete-cell"], [".update-cell",".dummy-cell"],""),
      DisplayDiv.new("Tutorial_action_div", "first_menu_div", [], [], [".delete_div"], [".group_div"],"")]);
  DisplayPageCl.DisplayPages["Tutorial"]<< PageView.new("tutorials", "Tutorial", "Add to groups",true,
    [ DisplayDiv.new("welcome_Tutorial", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], [".remove-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Tutorial_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('tutorials'); set_action_class('Tutorial','Group','add_to_groups')")]);
  DisplayPageCl.DisplayPages["Tutorial"]<< PageView.new("tutorials", "Tutorial", "Remove from groups",true,
    [ DisplayDiv.new("welcome_Tutorial", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], [".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Tutorial_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('tutorials'); set_action_class('Tutorial','Group','remove_from_groups')")]);
  DisplayPageCl.RegisterClasses("Tutorial",["welcome_Tutorial"],[".search_title",  ".default_class"],[".create_new_entry",".willing-cell",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".remove_from_group_title",".add_to_group_title", ".add-cell", ".remove-cell", ".send-cell", ".create-cell",".create-email-cell", ".suggest-cell"]);
  DisplayPageCl.RegisterClasses("Tutorial",["welcome_Group"],[".select_options", ".select-cell"],[".willing-cell",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".default_class",".group_div", ".delete_div", ".search_title",".update-cell",".dummy-cell", ".delete-cell", ".send-cell",".add-cell", ".remove-cell", ".create-cell",".create-email-cell", ".suggest-cell"]);


    DisplayPageCl.DisplayPages["WillingTutor"]=[];
  DisplayPageCl.DisplayPages["WillingTutor"]<< PageView.new("tutorials","WillingTutor", "Select Action",true,
     [ DisplayDiv.new("welcome_WillingTutor", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"], [".select_options", ".select-cell",".update-cell", ".delete-cell"],""),
      DisplayDiv.new("WillingTutor_action_div", "first_menu_div", [], [], [], [".group_div", ".delete_div"],"")]);
  DisplayPageCl.DisplayPages["WillingTutor"]<< PageView.new("tutorials", "WillingTutor", "Edit",true,
    [ DisplayDiv.new("welcome_WillingTutor", "first_div", ["content_div"],["two_column_div"], [".update-cell",".dummy-cell"], [".select_options", ".select-cell", ".delete-cell"],""),
      DisplayDiv.new("WillingTutor_action_div", "first_menu_div", [], [], [], [".group_div", ".delete_div"],"")]);
  DisplayPageCl.DisplayPages["WillingTutor"]<<  PageView.new("tutorials", "WillingTutor",  "Create group",true,
    [ DisplayDiv.new("welcome_WillingTutor", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], [".update-cell",".dummy-cell", ".delete-cell"],""),
      DisplayDiv.new("WillingTutor_action_div", "first_menu_div", [], [], [".group_div"], [".delete_div"],"")]);
  DisplayPageCl.DisplayPages["WillingTutor"]<<  PageView.new("tutorials", "WillingTutor", "Delete willing_tutors",true,
    [ DisplayDiv.new("welcome_WillingTutor", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".delete-cell"], [".update-cell",".dummy-cell"],""),
      DisplayDiv.new("WillingTutor_action_div", "first_menu_div", [], [], [".delete_div"], [".group_div"],"")]);
  DisplayPageCl.DisplayPages["WillingTutor"]<< PageView.new("tutorials", "WillingTutor", "Add to groups",true,
    [ DisplayDiv.new("welcome_WillingTutor", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], [".remove-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("WillingTutor_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('willing_tutors'); set_action_class('WillingTutor','Group','add_to_groups')")]);
  DisplayPageCl.DisplayPages["WillingTutor"]<< PageView.new("tutorials", "WillingTutor", "Remove from groups",true,
    [ DisplayDiv.new("welcome_WillingTutor", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], [".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("WillingTutor_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('willing_tutors'); set_action_class('WillingTutor','Group','remove_from_groups')")]);
  DisplayPageCl.RegisterClasses("WillingTutor",["welcome_WillingTutor"],[".search_title",  ".default_class"],[".create_new_entry",".willing-cell",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".remove_from_group_title",".add_to_group_title", ".add-cell", ".remove-cell", ".create-cell",".create-email-cell", ".suggest-cell"]);
  DisplayPageCl.RegisterClasses("WillingTutor",["welcome_Group","welcome_Person"],[".select_options", ".select-cell"],[".willing-cell",".tutorial_assign_title",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".default_class",".group_div", ".delete_div", ".search_title",".update-cell",".dummy-cell", ".delete-cell", ".send-cell",".add-cell", ".remove-cell", ".create-cell",".create-email-cell", ".suggest-cell"]);

  DisplayPageCl.DisplayPages["MaximumTutorial"]=[];
  DisplayPageCl.DisplayPages["MaximumTutorial"]<< PageView.new("tutorials","MaximumTutorial", "Select Action",true,
     [ DisplayDiv.new("welcome_MaximumTutorial", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"], [".select_options", ".select-cell",".update-cell", ".delete-cell"],""),
      DisplayDiv.new("MaximumTutorial_action_div", "first_menu_div", [], [], [], [".group_div", ".delete_div"],"")]);
  DisplayPageCl.DisplayPages["MaximumTutorial"]<< PageView.new("tutorials", "MaximumTutorial", "Edit",true,
    [ DisplayDiv.new("welcome_MaximumTutorial", "first_div", ["content_div"],["two_column_div"], [".update-cell",".dummy-cell"], [".select_options", ".select-cell", ".delete-cell"],""),
      DisplayDiv.new("MaximumTutorial_action_div", "first_menu_div", [], [], [], [".group_div", ".delete_div"],"")]);
  DisplayPageCl.DisplayPages["MaximumTutorial"]<<  PageView.new("tutorials", "MaximumTutorial",  "Create group",true,
    [ DisplayDiv.new("welcome_MaximumTutorial", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], [".update-cell",".dummy-cell", ".delete-cell"],""),
      DisplayDiv.new("MaximumTutorial_action_div", "first_menu_div", [], [], [".group_div"], [".delete_div"],"")]);
  DisplayPageCl.DisplayPages["MaximumTutorial"]<<  PageView.new("tutorials", "MaximumTutorial", "Delete max tutorials",true,
    [ DisplayDiv.new("welcome_MaximumTutorial", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".delete-cell"], [".update-cell",".dummy-cell"],""),
      DisplayDiv.new("MaximumTutorial_action_div", "first_menu_div", [], [], [".delete_div"], [".group_div"],"")]);
  DisplayPageCl.DisplayPages["MaximumTutorial"]<< PageView.new("tutorials", "MaximumTutorial", "Add to groups",true,
    [ DisplayDiv.new("welcome_MaximumTutorial", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], [".remove-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("MaximumTutorial_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('maximum_tutorials'); set_action_class('MaximumTutorial','Group','add_to_groups')")]);
  DisplayPageCl.DisplayPages["MaximumTutorial"]<< PageView.new("tutorials", "MaximumTutorial", "Remove from groups",true,
    [ DisplayDiv.new("welcome_MaximumTutorial", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], [".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("MaximumTutorial_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('maximum_tutorials'); set_action_class('MaximumTutorial','Group','remove_from_groups')")]);
  DisplayPageCl.RegisterClasses("MaximumTutorial",["welcome_MaximumTutorial"],[".search_title",  ".default_class"],[".create_new_entry",".willing-cell",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".remove_from_group_title",".add_to_group_title", ".add-cell", ".send-cell", ".remove-cell", ".create-cell",".create-email-cell", ".suggest-cell"]);
  DisplayPageCl.RegisterClasses("MaximumTutorial",["welcome_Group","welcome_Person"],[".select_options", ".select-cell"],[".willing-cell",".tutorial_assign_title",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".default_class",".group_div", ".delete_div", ".search_title",".update-cell",".dummy-cell", ".delete-cell", ".send-cell",".add-cell", ".remove-cell", ".create-cell",".create-email-cell", ".suggest-cell"]);


  DisplayPageCl.DisplayPages["Group"]=[];
   DisplayPageCl.DisplayPages["Group"]<< PageView.new("groups","Group",  "Select Action",true,
     [ DisplayDiv.new("welcome_Group", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"], [".remove-cell",".remove_from_group_title",".add_to_group_title",".select_options", ".select-cell",".update-cell", ".delete-cell",".add-cell"],"group_unrestriction()"),
      DisplayDiv.new("Group_action_div", "first_menu_div", [], [], [], [".group_div", ".delete_div"],"")]);
  DisplayPageCl.DisplayPages["Group"]<<  PageView.new("groups", "Group", "Edit",true,
    [ DisplayDiv.new("welcome_Group", "first_div", ["content_div"],["two_column_div"], [".update-cell",".dummy-cell"], [".remove-cell",".remove_from_group_title",".add_to_group_title",".select_options", ".select-cell", ".delete-cell",".add-cell"],"group_unrestriction()"),
      DisplayDiv.new("Group_action_div", "first_menu_div", [], [], [], [".group_div", ".delete_div"],"")]);
   DisplayPageCl.DisplayPages["Group"]<< PageView.new("groups", "Group",  "Delete groups",true,
    [ DisplayDiv.new("welcome_Group", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".delete-cell"], [".remove-cell",".update-cell",".dummy-cell", ".remove_from_group_title",".add_to_group_title",".add-cell"],"group_unrestriction()"),
      DisplayDiv.new("Group_action_div", "first_menu_div", [], [ ], [".delete_div"], [".group_div"],"")]);
  DisplayPageCl.DisplayPages["Group"]<<  PageView.new("groups", "Group", "Add people",true,
    [ DisplayDiv.new("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], [".remove-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Group_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Person", "first_div_2", [], ["Person_action_div"], [ ".add_to_group_title"], [".add_to_lecture_title",".add_to_willing_tutor_title",".add_to_willing_lecturer_title",".add_to_tutorial_title",".create_emails_title",".remove_from_group_title"],"set_double_scroll();group_restriction('people');set_action_class('Group','Person','add_to_group')")]);
  DisplayPageCl.DisplayPages["Group"]<< PageView.new("groups", "Group", "Add institutions",true,
    [ DisplayDiv.new("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], [".remove-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Group_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Institution", "first_div_2", [], ["Institution_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('institutions');set_action_class('Group','Institution','add_to_group')")]);
  DisplayPageCl.DisplayPages["Group"]<< PageView.new("groups", "Group", "Add courses",true,
    [ DisplayDiv.new("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], [".remove-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Group_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Course", "first_div_2", [], ["Course_action_div"], [".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('courses');set_action_class('Group','Course','add_to_group')")]);
  DisplayPageCl.DisplayPages["Group"]<< PageView.new("groups", "Group", "Add lectures",true,
    [ DisplayDiv.new("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], [".remove-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Group_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Lecture", "first_div_2", [], ["Lecture_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('lectures');set_action_class('Group','Lecture','add_to_group')")]);
    DisplayPageCl.DisplayPages["Group"]<< PageView.new("groups", "Group", "Add attendees",true,
    [ DisplayDiv.new("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], [".remove-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Group_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Attendee", "first_div_2", [], ["Attendee_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('attendees');set_action_class('Group','Attendee','add_to_group')")]);
  DisplayPageCl.DisplayPages["Group"]<<  PageView.new("groups", "Group", "Add tutorials",true,
    [ DisplayDiv.new("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], [".remove-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Group_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Tutorial", "first_div_2", [], ["Tutorial_action_div"], [".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('tutorials');set_action_class('Group','Tutorial','add_to_group')")]);
  DisplayPageCl.DisplayPages["Group"]<<  PageView.new("groups", "Group", "Add tutorial schedules",true,
    [ DisplayDiv.new("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], [".remove-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Group_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_TutorialSchedule", "first_div_2", [], ["TutorialSchedule_action_div"], [".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('tutorial_schedules');set_action_class('Group','TutorialSchedule','add_to_group')")]);
  DisplayPageCl.DisplayPages["Group"]<< PageView.new("groups", "Group","Add users",false,
    [ DisplayDiv.new("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], [".willing-cell",".assign-cell",".remove-cell",".remove-cell",".update-cell",".select_options", ".select-cell", ".delete-cell", ".create-cell",".create-email-cell", ".suggest-cell"],"group_unrestriction()"),
      DisplayDiv.new("Group_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_User", "first_div_2", [], ["User_action_div"], [ ".add_to_group_title"], [".willing-cell",".assign-cell",".remove_from_group_title"],"set_double_scroll();group_restriction('users');set_action_class('Group','User','add_to_group')")]);

  DisplayPageCl.DisplayPages["Group"]<<  PageView.new("groups", "Group","Remove people",true,
    [ DisplayDiv.new("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], [".add-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Group_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Person", "first_div_2", [], ["Person_action_div"], [".remove_from_group_title"], [".add_to_lecture_title",".add_to_willing_tutor_title",".add_to_willing_lecturer_title",".add_to_tutorial_title",".create_emails_title",".add_to_group_title"],"set_double_scroll();group_restriction('people');set_action_class('Group','Person','remove_from_group')")]);
  DisplayPageCl.DisplayPages["Group"]<<  PageView.new("groups", "Group", "Remove institutions",true,
    [ DisplayDiv.new("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], [".add-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Group_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Institution", "first_div_2", [], ["Institution_action_div"], [".remove_from_group_title"], [".add_to_group_title"],"set_double_scroll();group_restriction('institutions');set_action_class('Group','Institution','remove_from_group')")]);
  DisplayPageCl.DisplayPages["Group"]<<  PageView.new("groups", "Group", "Remove courses",true,
    [ DisplayDiv.new("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], [".add-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Group_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Course", "first_div_2", [], ["Course_action_div"], [".remove_from_group_title"], [".add_to_group_title"],"set_double_scroll();group_restriction('courses');set_action_class('Group','Course','remove_from_group')")]);
  DisplayPageCl.DisplayPages["Group"]<<  PageView.new("groups", "Group", "Remove lectures",true,
    [ DisplayDiv.new("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], [".add-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Group_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Lecture", "first_div_2", [], ["Lecture_action_div"], [".remove_from_group_title"], [".add_to_group_title"],"set_double_scroll();group_restriction('lectures');set_action_class('Group','Lecture','remove_from_group')")]);
 DisplayPageCl.DisplayPages["Group"]<<  PageView.new("groups", "Group", "Remove attendees",true,
    [ DisplayDiv.new("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], [".add-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Group_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Attendee", "first_div_2", [], ["Attendee_action_div"], [".remove_from_group_title"], [".add_to_group_title"],"set_double_scroll();group_restriction('attendees');set_action_class('Group','Attendee','remove_from_group')")]);
  DisplayPageCl.DisplayPages["Group"]<<  PageView.new("groups", "Group","Remove tutorials",true,
    [ DisplayDiv.new("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], [".add-cell",".remove_from_group_title",".add_to_group_title",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Group_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Tutorial", "first_div_2", [], ["Tutorial_action_div"], [".remove_from_group_title"], [".add_to_group_title"],"set_double_scroll();group_restriction('tutorials');set_action_class('Group','Tutorial','remove_from_group')")]);
 DisplayPageCl.DisplayPages["Group"]<<  PageView.new("groups", "Group","Remove tutorial schedule",true,
    [ DisplayDiv.new("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], [".add-cell",".remove_from_group_title",".add_to_group_title",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Group_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_TutorialSchedule", "first_div_2", [], ["TutorialSchedule_action_div"], [".remove_from_group_title"], [".add_to_group_title"],"set_double_scroll();group_restriction('tutorial_schedules');set_action_class('Group','TutorialSchedule','remove_from_group')")]);
  DisplayPageCl.DisplayPages["Group"]<< PageView.new("groups", "Group", "Remove users",false,
    [ DisplayDiv.new("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], [".add-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("Group_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_User", "first_div_2", [], ["User_action_div"], [".remove_from_group_title"], [".add_to_group_title"],"set_double_scroll();group_restriction('users');set_action_class('Group','User','remove_from_group')")]);
  DisplayPageCl.RegisterClasses("Group",[ "welcome_Group"],[".search_title",  ".default_class"],[".willing-cell",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".remove_from_group_title",".add_to_group_title",".create_new_entry", ".create-cell",".create-email-cell", ".send-cell", ".suggest-cell"]);
  DisplayPageCl.RegisterClasses("Group",["welcome_Person", "welcome_Institution", "welcome_Course", "welcome_Lecture","welcome_Attendee",  "welcome_Tutorial","welcome_TutorialSchedule", "welcome_Attendee","welcome_User"],[".select_options", ".select-cell"],[".willing-cell",".assign-cell", ".send-cell",".toadd-cell",".exam-cell",".compulsory-cell",".default_class",".group_div", ".delete_div", ".search_title",".update-cell",".dummy-cell", ".delete-cell",".add-cell", ".remove-cell", ".create-cell",".create-email-cell", ".suggest-cell"]);

    DisplayPageCl.DisplayPages["User"]=[];
   DisplayPageCl.DisplayPages["User"]<< PageView.new("people","User",  "Select Action",false,
     [ DisplayDiv.new("welcome_User", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"], [".select_options", ".select-cell", ".delete-cell"],""),
      DisplayDiv.new("User_action_div", "first_menu_div", [], [], [], [".group_div", ".delete_div"],"")]);
  DisplayPageCl.DisplayPages["User"]<<  PageView.new("people", "User", "Create group",false,
    [ DisplayDiv.new("welcome_User", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], [".dummy-cell", ".delete-cell"],""),
      DisplayDiv.new("User_action_div", "first_menu_div", [], [], [".group_div"], [".delete_div"],"")]);
  DisplayPageCl.DisplayPages["User"]<< PageView.new("people", "User", "Delete users",false,
    [ DisplayDiv.new("welcome_User", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".delete-cell"], [".dummy-cell"],""),
      DisplayDiv.new("User_action_div", "first_menu_div", [], [], [".delete_div"], [".group_div"],"")]);
  DisplayPageCl.DisplayPages["User"]<< PageView.new("people", "User", "Add to groups",true,
    [ DisplayDiv.new("welcome_User", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], [".remove-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("User_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('users'); set_action_class('User','Group','add_to_groups')")]);
  DisplayPageCl.DisplayPages["User"]<< PageView.new("people", "User", "Remove from groups",true,
    [ DisplayDiv.new("welcome_User", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], [".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("User_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('users'); set_action_class('User','Group','remove_from_groups')")]);
  DisplayPageCl.RegisterClasses("User",["welcome_User"],[".search_title",  ".default_class"],[".toadd-cell",".exam-cell",".compulsory-cell",".create_new_entry",".willing-cell",".assign-cell",".remove_from_group_title",".add_to_group_title", ".add-cell", ".remove-cell", ".send-cell", ".create-cell",".create-email-cell", ".suggest-cell"]);
  DisplayPageCl.RegisterClasses("User",["welcome_Group"],[".select_options", ".select-cell"],[".willing-cell",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".default_class",".group_div", ".delete_div", ".search_title",".update-cell",".dummy-cell", ".delete-cell", ".send-cell",".add-cell", ".remove-cell", ".create-cell",".create-email-cell", ".suggest-cell"]);


  DisplayPageCl.DisplayPages["EmailTemplate"]=[];
  DisplayPageCl.DisplayPages["EmailTemplate"]<< PageView.new("agatha_emails","EmailTemplate", "Select Action",true,
     [ DisplayDiv.new("welcome_EmailTemplate", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"], [".select_options", ".select-cell",".update-cell", ".delete-cell"],""),
      DisplayDiv.new("EmailTemplate_action_div", "first_menu_div", [], [], [], [".group_div", ".delete_div"],"")]);
    DisplayPageCl.DisplayPages["EmailTemplate"]<<  PageView.new("agatha_emails", "EmailTemplate",  "Create emails",true,
    [ DisplayDiv.new("welcome_EmailTemplate", "first_div_1", ["two_column_div"],["content_div"], [".create-email-cell",".dummy-cell"], [".update-cell",".select_options", ".select-cell", ".delete-cell"]," set_action_class('EmailTemplate','Person','create_email_from_template')"),
      DisplayDiv.new("EmailTemplate_action_div", "first_menu_div", [], [], [".email_template_div"], [".group_div", ".delete_div"],""),
      DisplayDiv.new("welcome_Person", "first_div_2", [], ["Person_action_div"], [".create_emails_title"], [".add_to_tutorial_title",".add_to_willing_tutor_title",".add_to_willing_lecturer_title",".add_attendee_options", ".add_to_group_title",".add_to_lecture_title",".remove_from_group_title"],"set_double_scroll();")]);
  DisplayPageCl.DisplayPages["EmailTemplate"]<< PageView.new("agatha_emails", "EmailTemplate", "Edit",true,
    [ DisplayDiv.new("welcome_EmailTemplate", "first_div", ["content_div"],["two_column_div"], [".update-cell",".dummy-cell"], [".create-email-cell",".select_options", ".select-cell", ".delete-cell"],""),
      DisplayDiv.new("EmailTemplate_action_div", "first_menu_div", [], [], [], [".email_template_div",".group_div", ".delete_div"],"")]);
  DisplayPageCl.DisplayPages["EmailTemplate"]<<  PageView.new("agatha_emails", "EmailTemplate",  "Create group",true,
    [ DisplayDiv.new("welcome_EmailTemplate", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], [".create-email-cell",".update-cell",".dummy-cell", ".delete-cell"],""),
      DisplayDiv.new("EmailTemplate_action_div", "first_menu_div", [], [], [".group_div"], [".email_template_div",".delete_div"],"")]);
  DisplayPageCl.DisplayPages["EmailTemplate"]<<  PageView.new("agatha_emails", "EmailTemplate", "Delete email_templates",true,
    [ DisplayDiv.new("welcome_EmailTemplate", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".delete-cell"], [".create-email-cell",".update-cell",".dummy-cell"],""),
      DisplayDiv.new("EmailTemplate_action_div", "first_menu_div", [], [], [".delete_div"], [".email_template_div",".group_div"],"")]);
  DisplayPageCl.DisplayPages["EmailTemplate"]<< PageView.new("agatha_emails", "EmailTemplate", "Add to groups",true,
    [ DisplayDiv.new("welcome_EmailTemplate", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], [".create-email-cell",".remove-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("EmailTemplate_action_div", "first_menu_div", [], [], [], [".email_template_div",".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('email_templates'); set_action_class('EmailTemplate','Group','add_to_groups')")]);
  DisplayPageCl.DisplayPages["EmailTemplate"]<< PageView.new("agatha_emails", "EmailTemplate", "Remove from groups",true,
    [ DisplayDiv.new("welcome_EmailTemplate", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], [".create-email-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
      DisplayDiv.new("EmailTemplate_action_div", "first_menu_div", [], [], [], [".email_template_div",".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('email_templates'); set_action_class('EmailTemplate','Group','remove_from_groups')")]);

  DisplayPageCl.RegisterClasses("EmailTemplate",["welcome_EmailTemplate","EmailTemplate_action_div"],[".search_title",  ".default_class"],[".email_template_div",".send_div",".willing-cell",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".remove_from_group_title",".add_to_group_title", ".add-cell", ".remove-cell", ".create-cell",".create-email-cell", ".suggest-cell", ".send-cell"]);
  DisplayPageCl.RegisterClasses("EmailTemplate",["welcome_Group","welcome_Person"],[".select_options", ".select-cell"],[".email_template_div",".send_div",".willing-cell",".tutorial_assign_title",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".default_class",".group_div", ".delete_div", ".search_title",".update-cell",".dummy-cell", ".delete-cell", ".send-cell",".add-cell", ".remove-cell", ".create-cell",".create-email-cell", ".suggest-cell"]);


    DisplayPageCl.DisplayPages["AgathaEmail"]=[];
  DisplayPageCl.DisplayPages["AgathaEmail"]<< PageView.new("agatha_emails","AgathaEmail", "Select Action",true,
     [ DisplayDiv.new("welcome_AgathaEmail", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"], [".select_options", ".select-cell",".update-cell", ".delete-cell", ".send-cell"],""),
      DisplayDiv.new("AgathaEmail_action_div", "first_menu_div", [], [], [], [".send_div",".group_div", ".delete_div"],"")]);
 DisplayPageCl.DisplayPages["AgathaEmail"]<<  PageView.new("agatha_emails", "AgathaEmail", "Send agatha_emails",true,
    [ DisplayDiv.new("welcome_AgathaEmail", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".send-cell"], [".delete-cell",".create-email-cell",".update-cell",".dummy-cell"],""),
      DisplayDiv.new("AgathaEmail_action_div", "first_menu_div", [], [], [".send_div"], [ ".delete_div",".agatha_email_div",".group_div"],"")]);

  DisplayPageCl.DisplayPages["AgathaEmail"]<< PageView.new("agatha_emails", "AgathaEmail", "Edit",true,
    [ DisplayDiv.new("welcome_AgathaEmail", "first_div", ["content_div"],["two_column_div"], [".update-cell",".dummy-cell"], [".create-email-cell",".select_options", ".select-cell", ".delete-cell", ".send-cell"],""),
      DisplayDiv.new("AgathaEmail_action_div", "first_menu_div", [], [], [], [".send_div",".group_div", ".delete_div"],"")]);
  DisplayPageCl.DisplayPages["AgathaEmail"]<<  PageView.new("agatha_emails", "AgathaEmail",  "Create group",true,
    [ DisplayDiv.new("welcome_AgathaEmail", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], [".create-email-cell",".update-cell",".dummy-cell", ".delete-cell", ".send-cell"],""),
      DisplayDiv.new("AgathaEmail_action_div", "first_menu_div", [], [], [".group_div"], [".send_div",".delete_div"],"")]);
  DisplayPageCl.DisplayPages["AgathaEmail"]<<  PageView.new("agatha_emails", "AgathaEmail", "Delete agatha_emails",true,
    [ DisplayDiv.new("welcome_AgathaEmail", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".delete-cell"], [".create-email-cell",".update-cell",".dummy-cell", ".send-cell"],""),
      DisplayDiv.new("AgathaEmail_action_div", "first_menu_div", [], [], [".delete_div"], [".send_div",".group_div"],"")]);
  DisplayPageCl.DisplayPages["AgathaEmail"]<< PageView.new("agatha_emails", "AgathaEmail", "Add to groups",true,
    [ DisplayDiv.new("welcome_AgathaEmail", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], [".create-email-cell",".remove-cell",".update-cell",".select_options", ".select-cell", ".delete-cell", ".send-cell"],"group_unrestriction()"),
      DisplayDiv.new("AgathaEmail_action_div", "first_menu_div", [], [], [], [".send_div",".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('agatha_emails'); set_action_class('AgathaEmail','Group','add_to_groups')")]);
  DisplayPageCl.DisplayPages["AgathaEmail"]<< PageView.new("agatha_emails", "AgathaEmail", "Remove from groups",true,
    [ DisplayDiv.new("welcome_AgathaEmail", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], [".create-email-cell",".update-cell",".select_options", ".select-cell", ".delete-cell", ".send-cell"],"group_unrestriction()"),
      DisplayDiv.new("AgathaEmail_action_div", "first_menu_div", [], [], [], [".send_div",".delete_div",".group_div"],""),
      DisplayDiv.new("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], [".remove_from_group_title"],"set_double_scroll();group_restriction('agatha_emails'); set_action_class('AgathaEmail','Group','remove_from_groups')")]);

  DisplayPageCl.RegisterClasses("AgathaEmail",["welcome_AgathaEmail"],[".search_title",  ".default_class"],[".willing-cell",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".remove_from_group_title",".add_to_group_title", ".add-cell", ".remove-cell", ".create-cell",".create-email-cell", ".suggest-cell"]);
  DisplayPageCl.RegisterClasses("AgathaEmail",["welcome_Group","welcome_Person"],[".select_options", ".select-cell"],[ ".send-cell",".willing-cell",".tutorial_assign_title",".assign-cell",".toadd-cell",".exam-cell",".compulsory-cell",".default_class",".group_div", ".delete_div", ".search_title",".update-cell",".dummy-cell", ".delete-cell",".add-cell", ".remove-cell", ".create-cell",".create-email-cell", ".suggest-cell"]);


  DisplayPageCl.DisplayPages["GroupFiltering"]=[];
  DisplayPageCl.DisplayPages["GroupFiltering"][0]= PageView.new("options", "GroupFiltering", "Select Action",true,
    [ DisplayDiv.new("welcome_GroupFiltering", "first_div", ["content_div"],["two_column_div"], ["update-cell", "delete-cell",".add-cell", ".send-cell"], [],"")]);

  DisplayPageCl.DisplayPages["FieldDisplayFormat"]=[];
  DisplayPageCl.DisplayPages["FieldDisplayFormat"][0]= PageView.new("options", "FieldDisplayFormat", "Select Action",true,
    [ DisplayDiv.new("welcome_FieldDisplayFormat", "first_div", ["content_div"],["two_column_div"], ["update-cell", "delete-cell",".add-cell", ".send-cell"], [],"")]);

  DisplayPageCl.DisplayPages["Email"]=[];

  DisplayPageCl.DisplayPages["default"]=DisplayPageCl.DisplayPages["Person"];



  def string_update
    String.class_eval do
      def pl(n)       
        ret_val = "";
        if( n == 0 || n > 1)
          if self == "0"
            ret_val = "No"
          elsif self =~ /^\d+$/
            ret_val = str;
          elsif self == "was"
            ret_val ="were"
          elsif self == "does"
            ret_val = "do"
          elsif self == "a"
            ret_val = ""
          elsif self == "has"
            ret_val = have
          else
            ret_val = self.pluralize;
          end
        else
          ret_val = self;
        end        
      end
    end
  end


  def index

    if session[:user_id]==1 && Person.find(:first) == nil
      import_csv
    end
    session[:current_page_name] = "";
    session[:current_option_id] = -1;
    session[:suggest_course_id] = 0;
    user_id=session[:user_id];
    @format_controller = FormatController.new(user_id);
    @all_group_filters = FilterController.GetAllGroupFilters(user_id);

    session[:format_controller] = @format_controller
    unless session[:search_ctls]
      string_update
      InitializeSessionController()
    end
    @search_ctls = session[:search_ctls];
    @attr_lists = session[:attr_lists];

    @search_ctls.each do |table_name, search_ctl|
      
      search_ctl.UpdateFiltersFromDB
    end
    x = 1;
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @people }
    end
  end
  
  def inactive_user_pages(except_page_name)
    user_pages = UserPage.find(:all, :conditions =>{ :user_id => @user_id});
    user_pages.each do |user_page|
      if(except_page_name!=user_page.page_name)
      user_page.is_active = false;
      user_page.save;
      end
    end
  end

  def display_page
    
    old_page_name =  session[:current_page_name];
    old_option_id = session[:current_option_id];
    page_name = params[:page_name];
    @user_id=session[:user_id];
    option_id = params[:option].to_i;
    if page_name.length == 0
      user_page = UserPage.find(:first, :conditions =>{:is_active => true, :user_id => @user_id});
      if user_page == nil
        user_page = UserPage.find(:first, :conditions =>{ :user_id => @user_id});
        if user_page ==nil
        default_page = DisplayPageCl.DisplayPages["default"][0];
        page_name =  default_page.page_name
        option_id = default_page.option_id
        else
           page_name = user_page.page_name
           option_id = user_page.option_id
        end
      else
        page_name = user_page.page_name;
        option_id = user_page.option_id;
      end
    elsif option_id == -1
      user_page= UserPage.find(:first, :conditions =>{:page_name => page_name, :user_id => @user_id});
      if user_page == nil
        option_id = DisplayPageCl.DisplayPages[page_name][0].option_id;
      else
        option_id = user_page.option_id;
      end
    else
      user_page= UserPage.find(:first, :conditions =>{:page_name => page_name, :user_id => @user_id});
    end

    inactive_user_pages(page_name);

    if user_page == nil
      user_page = UserPage.new;
    end
    user_display_page = DisplayPageCl.DisplayPages[page_name][option_id];
    user_page.user_id = @user_id;
    user_page.page_name =  user_display_page.page_name;
    user_page.option_id =  user_display_page.option_id;
    user_page.is_active = true;
    user_page.save;



    if old_page_name.length !=0 && old_option_id !=-1
      RAILS_DEFAULT_LOGGER.error("old_page_name = #{old_page_name}");
      RAILS_DEFAULT_LOGGER.error("old_option_id = #{old_option_id}");
      RAILS_DEFAULT_LOGGER.flush
      old_display_page = DisplayPageCl.DisplayPages[old_page_name][old_option_id];
    else
      old_display_page = nil;
    end
    RAILS_DEFAULT_LOGGER.error("page_name = #{page_name}");
    RAILS_DEFAULT_LOGGER.error("option_id = #{option_id}");
    
    session[:current_page_name] = user_display_page.page_name;
    session[:current_option_id] =  user_display_page.option_id;
    visible_divs = [];
    invisible_divs = [];
    user_display_page.display_divs.each do |display_div|
      visible_divs << display_div.div_id;
    end

    if old_display_page !=nil
      old_display_page.display_divs.each do |old_display_div|
        if visible_divs.index(old_display_div.div_id)== nil
          invisible_divs << old_display_div.div_id;
        end
      end
    end

    respond_to do |format|
      format.js  do
        render :update do |page|
          invisible_divs.each do |invisible_div|
            page << "hide_div(\"#{invisible_div}\")"
          end
          page << "set_body_id(\"#{user_display_page.body_id}\")"
          page << "set_option(\"#{user_display_page.page_name}\",\"#{user_display_page.option_id}\")"


          user_display_page.display_divs.each do |display_div|
            display_div.invisible_ids.each do |invisible_id|
              page << "hide_div(\"#{invisible_id}\")";
            end
            display_div.visible_ids.each do |visible_id|
              page << "show_div(\"#{visible_id}\")";
            end
            page << "insert_div(\"#{display_div.div_id}\", \"#{display_div.insert_id}\")";
              
            page << "show_div(\"#{display_div.div_id}\")"

            display_div.invisible_classes.each do |invisible_class|
              page << "hide_class(\"#{display_div.div_id}\",\"#{invisible_class}\")";
            end
            display_div.visible_classes.each do |visible_class|
              page << "show_class(\"#{display_div.div_id}\",\"#{visible_class}\")";
            end
            if display_div.post_javascript.length >0
              page << display_div.post_javascript;
            end
          end
          page << "unwait();";

        end
      end
    end
    RAILS_DEFAULT_LOGGER.flush
      
  end

  def InitializeSessionController()
    table_options = ["Person","Attendee","GroupPerson","GroupLecture","GroupCourse","GroupAttendee", "GroupTutorial","GroupTutorialSchedule", "GroupInstitution", "GroupUser","GroupTerm","GroupDay","GroupLocation","GroupWillingLecturer","GroupWillingTutor","Lecture","TutorialSchedule","Tutorial","WillingTeacher","WillingLecturer","WillingTutor","EmailTemplate","AgathaEmail", "GroupEmailTemplate","GroupAgathaEmail","Course","Group","Location","Institution","Term","TermName","Day", "User", "MaximumTutorial"];

    @search_ctls = {}
    @attr_lists = {}

    @hash_to_index = {}
    @search_ctls = {}
    @number_of_controllers =  table_options.length
    
    
    user_id = session[:user_id]
    administrator = session[:administrator];
    for controller_index in (0 .. @number_of_controllers -1)

      search_controller = SearchController.new(table_options[controller_index], user_id, administrator);
      attribute_list = AttributeList.new(table_options[controller_index]);
      
      @search_ctls[table_options[controller_index]] = search_controller;
      @attr_lists[table_options[controller_index]] = attribute_list;
    end
    for controller_index in (0 .. @number_of_controllers -1)
      @search_ctls[table_options[controller_index]].SetExtendedFilterControllers(@search_ctls);     
    end

    
    session[:search_ctls] =  @search_ctls
    session[:attr_lists] = @attr_lists

  end
  def child_unload
    edited_table_name = params[:table_name];
    id = params[:id];
    respond_to do |format|
      format.js  do
        render :update do |page|
          search_ctl = @search_ctls = session[:search_ctls][edited_table_name];
          updated_objects = search_ctl.GetUpdateObjects(edited_table_name, "id", id);
          if updated_objects.length>0
            row = updated_objects[0];
            search_results_row = SearchResultsRow.new(row, search_ctl)

            search_results_buttons = SearchResultsButtons.new(row, :search_results, nil,  nil, edited_table_name)
            search_results_row_button =  SearchResultsRowButton.new(search_results_row, search_results_buttons);
               
            page << "if ($('#{row.id}_#{ edited_table_name}')) {"
            page["#{row.id}_#{ edited_table_name}"].replace_html( :partial => "shared/search_results_row_button", :object =>search_results_row_button );
            page << "}"
                
            page << "open_windows.unset('#{edited_table_name}_#{row.id}')"
                      page_name =  session[:current_page_name];
            option_id = session[:current_option_id];
            user_display_page = DisplayPageCl.DisplayPages[page_name][option_id];
            user_display_page.display_divs.each do |display_div|

            page << "show_div(\"#{display_div.div_id}\")"

            display_div.invisible_classes.each do |invisible_class|
              page << "hide_class(\"#{display_div.div_id}\",\"#{invisible_class}\")";
            end
            end
          end
        end
      end
    end
    RAILS_DEFAULT_LOGGER.error("child_unload_end");
    RAILS_DEFAULT_LOGGER.flush

  end

  def update_main_page(page, edited_table_name, attribute_name, id)

  end

  def update_main
    
    id = params[:id];
    ids = [];
    ids << id;

    edited_table_name = params[:table_name];
    attribute_name = params[:attribute_name];
    @search_ctls = session[:search_ctls];
    @search_ctls.each {|key, value| puts "#{key} is #{value}" }
    respond_to do |format|
      format.js  do
        render :update do |page|
          @search_ctls.each do |table_name, search_ctl|
            updated_objects = search_ctl.GetUpdateObjects(edited_table_name, attribute_name, ids);
            for row in updated_objects
              search_results_row = SearchResultsRow.new(row, search_ctl)
              search_results_buttons = SearchResultsButtons.new(row, :search_results, nil,  nil, table_name)
              search_results_button_row =  SearchResultsRowButton.new(search_results_row, search_results_buttons);


              page << "if ($('#{row.id}_#{table_name}')) {"
              page["#{row.id}_#{table_name}"].replace_html( :partial => "shared/search_results_row_button", :object =>search_results_button_row );
              page << "}"


            end
          end
            page_name =  session[:current_page_name];
            option_id = session[:current_option_id];
            user_display_page = DisplayPageCl.DisplayPages[page_name][option_id];
            user_display_page.display_divs.each do |display_div|

            page << "show_div(\"#{display_div.div_id}\")"

            display_div.invisible_classes.each do |invisible_class|
              page << "hide_class(\"#{display_div.div_id}\",\"#{invisible_class}\")";
            end
            end
        end
      end
    end
    RAILS_DEFAULT_LOGGER.error("update_main end");
  end


  def update_search_controller

    @search_ctls = session[:search_ctls];
    @attr_lists = session[:attr_lists]
    table_name =  params[:table_change_text];
    search_ctl = @search_ctls[table_name];    
    current_filter_indices = [];
    possible_filter_indices = [];
    number_of_available_filters =  search_ctl.extended_filters.length;
    for filter_index in (0..(number_of_available_filters-1))
      extended_filter = search_ctl.extended_filters[filter_index];
      if(params.has_key?(extended_filter.filter_object.tag))
        current_filter_indices << filter_index
        if(extended_filter.filter_object.class == SearchField)
          extended_filter.filter_object.current_filter_string = params[extended_filter.filter_object.tag]
        elsif(extended_filter.filter_object.class == SubQuery)
         
          select_value =  params[extended_filter.filter_object.tag].to_i;
          if(select_value == 0 )
            argument_class = extended_filter.filter_object.argument_class;
            if argument_class.length >0
              last_str = "#{argument_class}.find(:last).id"
              select_value = eval(last_str);
            end
          end
                 
          extended_filter.filter_object.current_argument_value = select_value;


        end
      else
        possible_filter_indices << filter_index
      end
    end
    if current_filter_indices.length>0
      update_display = true;
      search_ctl.updateFilters(current_filter_indices,  update_display)
    end

    if(params.has_key?("order_text"))
      order_field_name = params["order_text"];
      search_ctl.UpdateOrder(order_field_name)      
    end
    RAILS_DEFAULT_LOGGER.error("update_search_controller_end");

  end
  def update_external_filters
    @search_ctls = session[:search_ctls];
    @attr_lists = session[:attr_lists];
    table_name =  params["table_change_text"];
    search_ctl = @search_ctls[table_name];
    external_filters = search_ctl.external_filters;
    # number_of_external_filters = params[:number_of_external_filters];

    for external_filter in external_filters
      current_arguments = external_filter.filter_object.current_arguments;
      filter_id = external_filter.filter_object.id;
      num_elements_str = "number_of_filter_elements_#{filter_id}";
      if(params.has_key?(num_elements_str))
        num_elts = params[num_elements_str].to_i;
        if num_elts < current_arguments.length
          current_arguments = current_arguments[0, num_elts];
        end
        for elt_id in (0..(num_elts-1))
          group_name_str = "group_selection_#{filter_id}_#{elt_id}"
          if params.has_key?(group_name_str)
            group_id = params[group_name_str];
          else
            group_id = 0;
          end
          arg_name_str = "argument_selection_#{filter_id}_#{elt_id}"
          member_id = params[arg_name_str];
          if current_arguments.length <= elt_id
            new_filter_elt = ExternalFilterElement.new(elt_id,external_filter.filter_object);
            new_filter_elt.member_id = member_id;
            new_filter_elt.group_id = group_id;
            current_arguments << new_filter_elt
          else
            current_arguments[elt_id].group_id = group_id;
            current_arguments[elt_id].member_id = member_id;
          end
        end
      else
        external_filter.filter_object.current_arguments =[];
      end
    end
    search_ctl.save_external_filters_to_db();    
  end


  def table_search
    unless session[:search_ctls]
      InitializeSessionController
    end
    update_search_controller
    update_external_filters
    table_name =  params[:table_change_text];
    search_ctl = @search_ctls[table_name];
    search_ctl.user_id = session[:user_id];
    
    eval_str = search_ctl.get_eval_string2;
    RAILS_DEFAULT_LOGGER.error( "TABLE SEARCH: before eval(#{eval_str})" );
    @table = eval(eval_str);
    RAILS_DEFAULT_LOGGER.error( "TABLE SEARCH: after eval(eval_str)" );
    search_results = SearchResults.new(@table, :search_results, search_ctl, nil, nil);
    search_results.table_type = :search_results;
    respond_to do |format|
      format.js  do
        render :update do |page|
          page.replace_html("possible_filters_div_"  + table_name, :partial => "shared/possible_filters", :object => search_ctl);
          page.replace_html("current_filters_"  + table_name, :partial => "shared/current_filters", :object => search_ctl);
          if(params.has_key?("do_search"))
            page.replace_html("search_results_" + table_name, :partial => "shared/search_results" , :object => search_results);
            
            page << "resizeX();"
            page_name =  session[:current_page_name];
            option_id = session[:current_option_id];
            user_display_page = DisplayPageCl.DisplayPages[page_name][option_id];
            user_display_page.display_divs.each do |display_div|

            page << "show_div(\"#{display_div.div_id}\")"

            display_div.visible_classes.each do |visible_class|
              page << "show_class(\"#{display_div.div_id}\",\"#{visible_class}\")";
            end

            display_div.invisible_classes.each do |invisible_class|
              page << "hide_class(\"#{display_div.div_id}\",\"#{invisible_class}\")";
            end

          end
            

            #   page <<  "var new_height = parseInt($('#{id_str}').clientHeight)*2";
            #  page << "style_str = 'background: #AAAAAA;  border-left: 1px solid; border-color: #000000;  float: right; height: 60px' "
            
            #  page << "$$('.remove_column').each(function(elt){elt.setAttribute('style',style_str)});"
            #  page << "$$('.remove_column').each(function(elt){elt.setStyle('height',new_height)});"
            #  page.select('.remove_column').each do |elt|
                    
            #   elt.setAttribute('style',style_str)
            
          end
          page << "resizeFilters();"
          page << "unwait();"
        end
      end
    end
    RAILS_DEFAULT_LOGGER.error("table_search_end");
    RAILS_DEFAULT_LOGGER.flush;
  end

  def add_external_filter
    table_name = params[:table_name];
    filter_id = params[:filter_id].to_i;
    @search_ctls = session[:search_ctls];
    search_ctl = @search_ctls[table_name];
    # search_ctl.AddExternalFilter(filter_id);
    external_filter = search_ctl.CreateNewExternalFilter(filter_id);

    respond_to do |format|
      format.js  do
        render :update do |page|
          page.insert_html(:bottom, "external_filters_#{table_name}", :partial => "shared/external_filter", :object => external_filter );
          page << "resizeExternalFilters(\"#{table_name}\")"
        end
      end
    end
    
  end
  def update_external_filter
    class_name = params[:class_name];
    filter_id = params[:filter_id].to_i;
    elt_index= params[:elt_index].to_i;
    member_id = params[:member_id].to_i;
    group_id = params[:group_id].to_i;
    @search_ctls = session[:search_ctls];
    search_ctl = @search_ctls[class_name];
    external_filter_element = search_ctl.GetExternalFilterElement(filter_id, elt_index);
    external_filter_element.member_id = member_id;
    external_filter_element.group_id = group_id;

    respond_to do |format|
      format.js  do
        render :update do |page|
          page.replace("external_filter_argument_span_#{class_name}_#{filter_id}_#{elt_index}",  :partial => "shared/external_filter_element", :object=> external_filter_element)
          page << "resizeExternalFilters(\"#{class_name}\")"
        end
      end
    end
  end

  def new
    class_name = params[:class_name];
    table_name = class_name.tableize;

    new_eval_str = "#{class_name}.new"
    new_obj = eval(new_eval_str);
    new_obj.save;
    id = new_obj.id;

    respond_to do |format|
      format.js  do
        render :update do |page|
          page << "open_edit_window( '#{table_name}','#{class_name}','#{id}')";
        end
      end
    end
    x =1;
  end

  def suggest_tutorial
   tutorial_schedule = TutorialSchedule.new;
    previous_suggestions = params[:previous_suggestions];
    course_id = params[:suggest_id];
    if session[:suggest_course_id] !=course_id
      previous_suggestions="";
      old_person_id = SearchController::NOT_SET;
      session[:suggest_course_id] =  course_id;
    else
      old_person_id = params[:person_id].to_i;
    end

    previous_str = "";
    if previous_suggestions.length >0
        previous_suggestions << ", "
    end
    previous_suggestions << old_person_id.to_s;
    if previous_suggestions.length >0
      previous_str = "AND person_id NOT IN (#{previous_suggestions}) "
    end
    db_tutorial_schedules = TutorialSchedule.find_by_sql("SELECT * FROM tutorial_schedules WHERE course_id = #{course_id} #{previous_str} ORDER BY term_id DESC LIMIT 1");
    willing_tutor = WillingTutor.find_by_sql("SELECT * FROM willing_tutors WHERE course_id = #{course_id} #{previous_str} ORDER BY order_of_preference ASC LIMIT 1");
    if willing_tutor.length > 0
      tutorial_schedule.person_id = willing_tutor[0].person_id;
    else
      first_suggestion = previous_suggestions.scan(/\d+/)
      if first_suggestion
        if first_suggestion[0].to_i == SearchController::NOT_SET && first_suggestion.length>1
        tutorial_schedule.person_id = first_suggestion[1].to_i
        else
          tutorial_schedule.person_id = first_suggestion[0].to_i
        end
      else
        tutorial_schedule.person_id = SearchController::NOT_SET;
      end
      previous_suggestions = SearchController::NOT_SET.to_s;
    end
        old_term_id = params[:term_id].to_i;
    if old_term_id == SearchController::NOT_SET

      suggested_term = session[:current_term];
      if suggested_term !=nil ||   suggested_term == SearchController::NOT_SET
        tutorial_schedule.term_id = suggested_term.id
      else
        tutorial_schedule.term_id = Term.find(:last).id;
      end
    else
      tutorial_schedule.term_id = old_term_id;
    end
    tutorial_schedule.course_id = course_id;

    old_number_of_tutorials = params[:number_of_tutorials].to_i;
    if old_number_of_tutorials == 0 && db_tutorial_schedules.length > 0
      tutorial_schedule.number_of_tutorials = db_tutorial_schedules[0].number_of_tutorials;
    else
      tutorial_schedule.number_of_tutorials = old_number_of_tutorials;
    end

    @search_ctls = session[:search_ctls];

   
    suggested_tutorial_schedule = SuggestedTutorial.new(@search_ctls["TutorialSchedule"],tutorial_schedule);
    suggested_tutorial_schedule.previous_suggestions = previous_suggestions;
    respond_to do |format|
      format.js  do
        render :update do |page|
        page.replace_html("tutorial_schedule_div",:partial => "shared/suggested_tutorial", :object =>  suggested_tutorial_schedule);
        end
      end
    end
  end
  
  def suggest_lecture
    lecture = Lecture.new;
    previous_suggestions = params[:previous_suggestions];
    course_id = params[:suggest_id];
    if session[:suggest_course_id] !=course_id
      previous_suggestions="";
      old_person_id = SearchController::NOT_SET;
      session[:suggest_course_id] =  course_id;
    else
      old_person_id = params[:person_id].to_i;
    end
    
    previous_str = "";
    if previous_suggestions.length >0
        previous_suggestions << ", "
    end
    previous_suggestions << old_person_id.to_s;
    if previous_suggestions.length >0
      previous_str = "AND person_id NOT IN (#{previous_suggestions}) "
    end
    db_lectures = Lecture.find_by_sql("SELECT * FROM lectures WHERE course_id = #{course_id} #{previous_str} ORDER BY term_id DESC LIMIT 1");
    willing_lecturers = WillingLecturer.find_by_sql("SELECT * FROM willing_lecturers WHERE course_id = #{course_id} #{previous_str} ORDER BY order_of_preference ASC LIMIT 1");
    if willing_lecturers.length > 0
      lecture.person_id = willing_lecturers[0].person_id;
    else
      first_suggestion = previous_suggestions.scan(/\d+/)
      if first_suggestion
        if first_suggestion[0].to_i == SearchController::NOT_SET && first_suggestion.length>1
        lecture.person_id = first_suggestion[1].to_i
        else
          lecture.person_id = first_suggestion[0].to_i
        end
      else
        lecture.person_id = SearchController::NOT_SET;
      end      
      previous_suggestions = SearchController::NOT_SET.to_s;
    end
        old_term_id = params[:term_id].to_i;
    if old_term_id == SearchController::NOT_SET
       suggested_term = session[:current_term];
      if suggested_term !=nil ||   suggested_term == SearchController::NOT_SET
        lecture.term_id = suggested_term.id
      else
        lecture.term_id = Term.find(:last).id;
      end
    else
      lecture.term_id = old_term_id;
    end
    old_classes = params[:number_of_classes].to_i
    if old_classes == 0  && db_lectures.length > 0
      lecture.number_of_classes = db_lectures[0].number_of_classes
    else
      lecture.number_of_classes = old_classes
    end
    old_lectures = params[:number_of_lectures].to_i;
    if old_lectures == 0 && db_lectures.length > 0
      lecture.number_of_lectures = db_lectures[0].number_of_lectures;
    else
      lecture.number_of_lectures = old_lectures;
    end
    lecture.day_id = params[:day_id].to_i;
    lecture.lecture_time = params[:lecture_time];
    @search_ctls = session[:search_ctls];

    class_name = params[:suggest_class];
    suggested_lecture = SuggestedLecture.new(@search_ctls["Lecture"],lecture);
    suggested_lecture.previous_suggestions = previous_suggestions;
    respond_to do |format|
      format.js  do
        render :update do |page|
        #  page["#{class_name}_action_div"].select(".schedule_div")[0].replace_html(:partial => "shared/suggested_lecture", :object =>  suggested_lecture);
        page.replace_html("schedule_div",:partial => "shared/suggested_lecture", :object =>  suggested_lecture);
        end
      end
    end
    RAILS_DEFAULT_LOGGER.flush
  end

  def make_suggestion
   suggest_type = params[:suggest_type];
    case suggest_type
    when "Lecture"
      suggest_lecture
    when "Tutorial"
      suggest_tutorial
    else
      x = 1;
    end
   end
 

  def select_action
    action = params[:action_type];
    class_name = params[:class_name];
    ids = params[:row_in_list];
    if(ids == nil)
      ids = [];
    end
    case action
    when "delete"
      delete_array(ids, class_name);
    when "group"
      
      group_name = params[:new_group_name];
      group_privacy = params[:group_privacy];
      new_group(ids, class_name, group_name, group_privacy);
    when "add_to_group"
      
      class_name2 = params[:class_name2];
      group_id = params[:id];
      add_to_group(group_id, ids, class_name2);
    when "remove_from_group"
      
      class_name2 = params[:class_name2];
      group_id = params[:id];
      remove_from_group(group_id, ids, class_name2);
      
    when "add_to_groups"
      
      class_id = params[:id];
      add_to_groups(ids, class_id, class_name);
    when "remove_from_groups"
      
      class_id = params[:id];
      remove_from_groups(ids, class_id, class_name);
    when "create_lecture_from_course"
      create_lecture_schedule
    when "create_tutorials_from_course"
      create_tutorial_schedules(ids)
    when "create_email_from_template"
      create_email_from_template(ids)
    when "send_email"
      send_email()
    when "send_emails"
      send_emails(ids)
    when "make_willing_lecturer"
      make_willing_lecturer(ids)
    when "make_willing_tutor"
      make_willing_tutor(ids)
    when "add_to_lectures"
      add_to_lectures(ids)
    when "assign_tutor"
      assign_tutor(ids)
    when "max_tutorials"
      max_tutorials(ids)
    else
      x = 1;     
    end
     RAILS_DEFAULT_LOGGER.flush
  end

  def send_email()
    ids = [];
    ids << params[:email_id];
    send_emails(ids)
  end
  def send_emails(ids)
    error_str =""
    success_str =""
    non_emails = 0;
    has_emails = 0;
    non_email_str = "";
    if(ids == nil || ids.length==0)
      error_str = "You have not selected any emails to send. "
    else
      test_flag = params[:test_flag].to_i;
      user_id = session[:user_id];
      user = User.find(user_id)
      me = Person.find(user.person_id)


      if(test_flag == 0 || (test_flag ==1 && me.email != nil && me.email =~ /@/))



      ids.each do |id|
        agatha_email = AgathaEmail.find(id);
        agatha_email.sent = false;
        email_addresses = agatha_email.to_email.split(';');
        email_addresses.each do |email_address|
        if email_address =~ /@/
          has_emails = has_emails +1;
          if(test_flag ==1)
            to_email =  me.email;
          else
            to_email =  email_address
          end
          AgathaMailer.deliver_email(agatha_email, to_email)
          agatha_email.sent = true;
        else
          non_emails = non_emails + 1;
          if non_email_str.length >0
            non_email_str << ", ";
          end
          non_email_str << id.to_s
        end
        end
        agatha_email.save;

      end
           if test_flag == 1
            success_str = "Testing: "
          else
            success_str = ""
          end
        non_email_str  = non_email_str.gsub(/,\s*(\d+)$/,' and \1')
        if(non_emails >0)
          @pluralize_num = non_emails

          success_str << "The " + pl("email") +" with " +pl("id") +" "+  non_email_str +" "+ pl("does") + " not have "  + pl("a") + " valid email " + pl("address") + ". ";
        end
          @pluralize_num = has_emails
          success_str << pl(has_emails.to_s) + " " + pl("email") +" "+ pl("was") + " sent. "

        
      else
         error_str = "You are logged in as user #{user.name} which is associated with the person #{me.first_name} #{me.second_name}, but this person does not have a valid email which can be used for testing"
      end
    end



    
      respond_to do |format|
      format.js  do
        render :update do |page|
          if error_str.length >0
            page << "alert('#{error_str}')";
          else
            page << "alert('#{success_str}')";
          end
        end
      end

    end
  end


  def pl(str)
    x = 1;
    ret_val = "";
    if( @pluralize_num == 0 || @pluralize_num > 1)
      if str == "0"
        ret_val = "No"
      elsif str =~ /^\d+$/
        ret_val = str;
      elsif str == "was"
        ret_val ="were"
      elsif str == "does"
        ret_val = "do"
      elsif str == "a"
        ret_val = ""
      elsif str == "has"
        ret_val = have
      else
        ret_val = str.pluralize;
      end
    else
      ret_val = str;
    end
    return ret_val;

  end
  def create_email_from_template(ids)
    if(ids == nil || ids.length==0)
      error_str = "You have not selected any tutorial schedules"
    else
      error_str = ""
      template_id = params[:template_id].to_i;
      term_id = params[:term_id].to_i;
      course_id = params[:course_id].to_i;
      template = EmailTemplate.find(template_id);
      if(template.course_dependency && course_id == SearchController::NOT_SET)
        error_str = "This template depends on a course, but you have not selected one. "
      elsif(template.term_dependency && term_id == SearchController::NOT_SET)
        error_str = "This template depends on a term, but you have not selected one. "
      else
        term = Term.find(term_id);
        course = Course.find(course_id);
        warning_str=""
        if template.global_warnings != nil && template.global_warnings.length>0
        eval(template.global_warnings);
        end
        

        
        ids.each do |id|

          person = Person.find(id);

          if template.personal_warnings != nil && template.personal_warnings.length >0
            eval(template.personal_warnings);
          end

          if  template.ruby_header.length > 0
            body_str = template.ruby_header + template.body;
          else
            body_str =  template.body;
          end


          agatha_email = AgathaEmail.new
          user_id = session[:user_id]
          user = User.find(user_id);
          user_person_id = user.person_id
          user_person = Person.find(user_person_id);

          agatha_email.from_email = render_to_string( :inline => template.from_email , :locals => { :me => user_person})
          agatha_email.to_email = person.email
          agatha_email.subject = render_to_string( :inline => template.subject , :locals => { :person => person, :term => term, :course => course })
          agatha_email.body = render_to_string( :inline => body_str , :locals => { :person => person, :term => term, :course => course })
          agatha_email.sent = false
          agatha_email.template_id = template_id
          agatha_email.person_id = id;
          agatha_email.term_id = term_id;
          agatha_email.course_id = course_id;
          agatha_email.save;


        end
        @pluralize_num = ids.length;
        success_str = pl(@pluralize_num.to_s) + " " +  pl("email") + " " + pl("was") + " created. ";
      end      
    end
    respond_to do |format|
      format.js  do
        render :update do |page|
          if error_str.length >0
            page << "alert('#{error_str}')";
          else
            j_str = "alert(\"#{success_str+warning_str}\")";
            page << j_str;
          end
        end
      end

    end
  end
  def max_tutorials(ids)
    if(ids == nil || ids.length==0)
      error_str = "You have not selected any people  to email"
    else
      error_str = ""
      term_id = params[:term_id];
      max_tutorials_number = params[:max_tutorials];
      id_str = "";
      ids.each do |id|
        if(id_str.length >0 )
          id_str << ", ";
        end
        id_str << id.to_s;
      end

      present_max_tutorials = MaximumTutorial.find_by_sql("SELECT * FROM maximum_tutorials WHERE person_id IN (#{id_str}) AND term_id =#{term_id}");
      present_num = present_max_tutorials.length;
      present_max_tutorials.each do |max_tutorial|
        ids.delete(max_tutorial.person_id.to_s)
        max_tutorial.max_tutorials = max_tutorials_number;
        max_tutorial.save;
      end
      
      ids.each do |id|
        max_tutorial = MaximumTutorial.new;
        max_tutorial.term_id = term_id;
        max_tutorial.person_id = id;
        max_tutorial.max_tutorials = max_tutorials_number;
        max_tutorial.save;
      end
      new_num = ids.length;
      success_str  ="";
      if present_num ==1
        success_str = "1 maximum tutorial entry was updated in the database. "
      elsif present_num >1
       success_str = "#{present_num} maximum tutorial entries were updated in the database. "
      end
      if new_num == 1
        success_str << "1 new maximum tutorial entry was added to the database. "
      elsif new_num >1
        success_str << "#{present_num} new maximum tutorial entries were added to the database. "
      end

    end
    respond_to do |format|
      format.js  do
        render :update do |page|
          if error_str.length >0
            page << "alert('#{error_str}')";
          else
            page << "alert('#{success_str}')";
          end
        end
      end
    end

  end

  def assign_tutor(ids)
    if(ids == nil || ids.length==0)
      error_str = "You have not selected any tutorial schedules"
    else
      error_str = ""
      tutor_id = params[:tutor_id];
      id_str = "";
      ids.each do |id|
        if(id_str.length >0 )
          id_str << ", ";
        end
        id_str << id.to_s;
      end
      tutorial_schedules = TutorialSchedule.find_by_sql("SELECT * FROM tutorial_schedules WHERE id IN (#{id_str})");
      tutorial_schedules.each do |tutorial_schedule|
        tutorial_schedule.person_id = tutor_id;
        tutorial_schedule.save;
      end
      num_updates = tutorial_schedules.length;
      if (num_updates == 0)
        success_str = "No tutor updates were made. "
      elsif num_updates ==1
        success_str = "One tutor update was made. "
      else
        success_str = "#{num_updates} tutor updates were made. "
      end
    end
    respond_to do |format|
      format.js  do
        render :update do |page|
          if error_str.length >0
            page << "alert('#{error_str}')";
          else
            page << "alert('#{success_str}')";
          end
        end
      end
    end
    
  end

  def  make_willing_lecturer(ids)
     alert_str= "";
    if ids != nil && ids.length > 0
      person_id = params[:willing_id];
      already_willing = 0;
      new_willing = 0;
      ids.each do |course_id|
        present = WillingLecturer.find_by_sql("SELECT * FROM willing_lecturers WHERE person_id = #{person_id} AND course_id = #{course_id}");
        if present !=nil && present.length >0
          already_willing = already_willing + 1;
        else
          new_willing = new_willing +1;
          willing_lecturer = WillingLecturer.new;
          willing_lecturer.person_id = person_id;
          willing_lecturer.course_id = course_id;
          willing_lecturer.order_of_preference = 1;
          willing_lecturer.save;
        end
      end
      if new_willing == 0
        alert_str = "No willing lecturer entries were added to the database. "
      elsif new_willing == 1
        alert_str = "1 willing lecturer entry was added to the database. "
      else
        alert_str = "#{new_willing} willing lecturer entries were added to the database. "
      end
      if already_willing==1
        alert_str << "1 willing lecturer entry was already in the database for person with id #{person_id}. "
      elsif already_willing>1
        alert_str << "#{already_willing} willing lecturer entries were already in the database for person with id #{person_id}. "
      end
    else
      alert_str = "You did not select any courses. "
    end
    respond_to do |format|
      format.js  do
        render :update do |page|
          page << "alert('#{alert_str}')"
        end
      end
    end
  end

    def  make_willing_tutor(ids)
     alert_str= "";
    if ids != nil && ids.length > 0
      person_id = params[:willing_id];
      already_willing = 0;
      new_willing = 0;
      ids.each do |course_id|
        present = WillingTutor.find_by_sql("SELECT * FROM willing_tutors WHERE person_id = #{person_id} AND course_id = #{course_id}");
        if present !=nil && present.length >0
          already_willing = already_willing + 1;
        else
          new_willing = new_willing +1;
          willing_tutor = WillingTutor.new;
          willing_tutor.person_id = person_id;
          willing_tutor.course_id = course_id;
          willing_tutor.order_of_preference = 1;
          willing_tutor.save;
        end
      end
      if new_willing == 0
        alert_str = "No willing tutor entries were added to the database. "
      elsif new_willing == 1
        alert_str = "1 willing tutor entry was added to the database. "
      else
        alert_str = "#{new_willing} willing tutor entries were added to the database. "
      end
      if already_willing==1
        alert_str << "1 willing tutor entry was already in the database for person with id #{person_id}. "
      elsif already_willing>1
        alert_str << "#{already_willing} willing tutor entries were already in the database for person with id #{person_id}. "
      end
    else
      alert_str = "You did not select any courses. "
    end
    respond_to do |format|
      format.js  do
        render :update do |page|
          page << "alert('#{alert_str}')"
        end
      end
    end
  end
  
  def create_tutorial_schedules(ids)
    tutor_id = params[:tutor_id];
    course_id =  params[:course_id];
    if ids != nil && ids.length > 0
      ids.each do |student_id|
        tutorial_schedule = TutorialSchedule.new;
        tutorial_schedule.course_id = course_id
        tutorial_schedule.person_id = tutor_id
        tutorial_schedule.term_id = params[:term_id];
        tutorial_schedule.number_of_tutorials = params[:number_of_tutorials];
        tutorial_schedule.number_of_tutorial_hours = params[:number_of_tutorials];
        tutorial_schedule.save;
        tutorial = Tutorial.new;
        tutorial.person_id = student_id;
        tutorial.tutorial_schedule_id = tutorial_schedule.id;
        tutorial.save;

        present = WillingTutor.find_by_sql("SELECT * FROM willing_tutors WHERE person_id = #{tutor_id} AND course_id = #{course_id}");
        if present ==nil || present.length == 0

          willing_tutor = WillingTutor.new;
          willing_tutor.person_id = tutor_id
          willing_tutor.course_id = course_id
          willing_tutor.order_of_preference = 1;
          willing_tutor.save;
        end
      end
      alert_str = "Tutorial/Tutorial Schedules created";
    else
      alert_str = "You did not select any students. "
    end
    respond_to do |format|
      format.js  do
        render :update do |page|
          page << "alert('#{alert_str}')"
        end
      end
    end
  end
  
  def create_lecture_schedule
    lecture = Lecture.new;
    person_id = params[:person_id];
    course_id =  params[:course_id];
    lecture.course_id = params[:course_id];
    lecture.person_id = params[:person_id];
    lecture.day_id = params[:day_id];
    lecture.lecture_time = params[:lecture_time];
    lecture.location_id = SearchController::NOT_SET;
    lecture.term_id = params[:term_id];
    lecture.exam = "";
    lecture.notes = "";
    lecture.number_of_classes = params[:number_of_classes];
    lecture.number_of_lectures = params[:number_of_lectures];
    lecture.save;

     present = WillingLecturer.find_by_sql("SELECT * FROM willing_lecturers WHERE person_id = #{person_id} AND course_id = #{course_id}");
        if present ==nil || present.length == 0

          willing_lecturer = WillingLecturer.new;
          willing_lecturer.person_id =  person_id
          willing_lecturer.course_id =  course_id 
          willing_lecturer.order_of_preference = 1;
          willing_lecturer.save;
        end

    respond_to do |format|
      format.js  do
        render :update do |page|
          page << "alert('Lecture schedule created')"
        end
      end
    end
  end

  def add_to_lectures(people_ids)
    lecture_id = params[:id];
    error_str = "";
    success_str="";
    if people_ids == nil || people_ids.length == 0
      error_str = "Add/Update lectures failed: you have not selected any people. "
    else
      people_list = ""
      people_ids.each do |person_id|
      if people_list.length >0
        people_list << ", "
      end
        people_list << person_id.to_s
      end
      people_where_str = "(#{people_list})"
      non_present_people = Person.find_by_sql("SELECT * FROM people a0 WHERE a0.id IN #{people_where_str} AND (SELECT COUNT(*) FROM attendees a1 WHERE a1.person_id = a0.id AND a1.lecture_id = #{lecture_id})=0");
      non_present_people.each do |person|
        attendee = Attendee.new;
        attendee.lecture_id = lecture_id;
        attendee.person_id = person.id;
        attendee.save;
      end
      exam_ids = params[:exam_in_list];
      
      exam_list = "";
      if exam_ids == nil || exam_ids.length == 0

         non_exam_attendees = Attendee.find_by_sql("SELECT * FROM attendees a0 WHERE a0.person_id IN #{people_where_str} AND a0.lecture_id = #{lecture_id}");
         exam_attendees = []
      else
        exam_ids.each do |exam_id|
          if exam_list.length >0
            exam_list << ", "
          end
            exam_list << exam_id.to_s
        end
        exam_attendees = Attendee.find_by_sql("SELECT * FROM attendees a0 WHERE a0.person_id IN (#{exam_list}) AND a0.lecture_id = #{lecture_id}");
        non_exam_attendees =  Attendee.find_by_sql("SELECT * FROM attendees a0 WHERE a0.person_id IN (#{people_list}) AND a0.person_id NOT IN (#{exam_list}) AND a0.lecture_id = #{lecture_id}");
      end
      exam_attendees.each do |attendee|
        attendee.examined = true;
        attendee.save;
      end
      non_exam_attendees.each do |attendee|
        attendee.examined = false;
        attendee.save;
      end
      compulsory_ids = params[:compulsory_in_list];
      compulsory_list = "";
      if compulsory_ids == nil || compulsory_ids.length == 0

         non_compulsory_attendees = Attendee.find_by_sql("SELECT * FROM attendees a0 WHERE a0.person_id IN #{people_where_str} AND a0.lecture_id = #{lecture_id}");
         compulsory_attendees = []
      else
        compulsory_ids.each do |compulsory_id|
          if compulsory_list.length >0
            compulsory_list << ", "
          end
            compulsory_list << compulsory_id.to_s
        end
        compulsory_attendees = Attendee.find_by_sql("SELECT * FROM attendees a0 WHERE a0.person_id IN (#{compulsory_list}) AND a0.lecture_id = #{lecture_id}");
        non_compulsory_attendees =  Attendee.find_by_sql("SELECT * FROM attendees a0 WHERE a0.person_id IN (#{people_list}) AND a0.person_id NOT IN (#{compulsory_list}) AND a0.lecture_id = #{lecture_id}");
      end
      compulsory_attendees.each do |attendee|
        attendee.compulsory = true;
        attendee.save;
      end
      non_compulsory_attendees.each do |attendee|
        attendee.compulsory = false;
        attendee.save;
      end
      non_present_num = non_present_people.length;
      if non_present_num == 0
        success_str = "Everyone in the selected list is already attending the lecture course. "
      elsif non_present_num ==1
        success_str = "One person was added to the lecture attendee list. "
      else
        success_str = "#{non_present_num} people were added to the lecture attendee list. "
      end
      if non_present_num != 0
        present_num = people_ids.length - non_present_num
        if present_num ==1
          success_str << "One person was already on the lecture attendee list. "
        elsif present_num > 1
          success_str << "#{present_num} people were already on the lecture attendee list. "
        end
      end
    end

    

    
    respond_to do |format|
      format.js  do
        render :update do |page|
          if error_str.length >0
            page << "alert('#{error_str}')";
          else
             page << "alert('#{success_str}')";
          end
        end
      end
    end
  end

  def remove_from_group(group_id, ids, class_name2)

  @user_id = session[:user_id];
  db_group = Group.find(group_id);
  permission = false
  class_ok= false
    if(db_group != nil)
      if db_group.private == false || db_group.owner_id = @user_id
        permission = true;
      end
    end

    if(permission)
      if(class_name2.tableize == db_group.table_name)
        class_ok= true;
        if (ids.length > 0)
        id_str = ""
        ids.each do |id|
          if id_str.length >0
            id_str << ", "
          end
          id_str << id.to_s;
        end
        already_existing = Group.find_by_sql("SELECT * FROM group_#{class_name2.tableize} WHERE #{class_name2.underscore}_id IN (#{id_str}) AND group_id = #{group_id}");
        num_existing = already_existing.length;
        not_present_members = Array.new(ids);
        already_existing.each do |existing|
          existing_id_str = "existing.#{class_name2.underscore}_id";
          existing_id = eval(existing_id_str)
          not_present_members.delete(existing_id);
        end
        already_existing.each do |delete_obj|
          destroy_str = "Group#{class_name2}.destroy(#{delete_obj.id})";
          eval(destroy_str);
         # delete_obj.destroy;
        end
      end
    end
    end

   respond_to do |format|
      format.js  do
        render :update do |page|
          if(db_group== nil)
          page << "alert('Remove Selected Failed: Could not find group id #{group_id} in database')"
          elsif(!permission )
            page << "alert('Remove Selected Failed: You do not have permission to edit group #{db_group.group_name}')"
          elsif(!class_ok)
            page << "alert('Remove Selected Failed: The #{db_group.group_name} is for members of type #{db_group.table.classify} rather than type #{class_name2}')"
          elsif(ids.length == 0)
            page << "alert('Remove Selected Failed: You have not selected any #{db_group.table_name}')"
          else
            success_str = ""
            if  num_existing == 1
              success_str << "1 #{class_name2} has been removed from the group #{db_group.group_name}. "
            elsif  num_existing >1
              success_str << "#{num_existing} #{class_name2.tableize} have been removed from the group #{db_group.group_name}. "
            end
            if not_present_members.length == 1
              success_str <<  "1 #{class_name2} was not in the group #{db_group.group_name} to begin with. "
            elsif not_present_members.length > 1
              success_str << "#{not_present_members.length} #{class_name2.tableize} were not in the group #{db_group.group_name} to begin with."
            end
            page << "alert('#{success_str}')"
          end
        end
      end
    end
RAILS_DEFAULT_LOGGER.flush
  end

  def add_to_groups(group_ids, class_id, class_name)
    @user_id = session[:user_id];
    if group_ids.length >0
      group_ids_str = "";
      group_ids.each do |group_id|
        if(group_ids_str.length >0)
          group_ids_str << ", "
        end
        group_ids_str << group_id.to_s;
      end
      group_ids_str = "(#{group_ids_str})";
      unpermissioned = Group.find_by_sql("SELECT * FROM groups WHERE id IN #{group_ids_str} AND table_name = '#{class_name.tableize}' AND (owner_id != #{@user_id} AND private = true)")
      wrong_types = Group.find_by_sql("SELECT * FROM groups WHERE id IN #{group_ids_str} AND table_name != '#{class_name.tableize}' AND (owner_id = #{@user_id} OR private = false)")
      permissioned = Group.find_by_sql("SELECT * FROM groups WHERE id IN #{group_ids_str} AND table_name = '#{class_name.tableize}' AND (owner_id = #{@user_id} OR private = false)")
      if permissioned.length >0
        permission_id_str = "";
        permissioned.each do |permission_group|
          if(permission_id_str.length > 0)
            permission_id_str << ", "
          end
          permission_id_str << permission_group.id.to_s
        end
         permission_id_str = "(#{permission_id_str})"
         sql_str = "SELECT * FROM groups a0 WHERE a0.id IN #{permission_id_str} AND (SELECT COUNT(*) FROM group_#{class_name.tableize} WHERE group_id = a0.id AND #{class_name.underscore}_id = #{class_id})=0"
         unpresent = Group.find_by_sql(sql_str);
         present = Group.find_by_sql("SELECT * FROM group_#{class_name.tableize} WHERE group_id  IN #{permission_id_str} AND #{class_name.underscore}_id = #{class_id}");

         unpresent.each do |db_group|
          new_group_member_str = "Group#{class_name}.new"
          new_group_member = eval(new_group_member_str);
          new_group_member.group_id = db_group.id;
          new_group_member_id_str = "new_group_member.#{class_name.underscore}_id = #{class_id}"
          eval(new_group_member_id_str);
          new_group_member.save;
         end
      end
    end

    respond_to do |format|
      format.js  do
        render :update do |page|
          if(group_ids.length == 0)
            page << "alert('Add Selected Failed: You did not select any groups')"
          elsif permissioned.length == 0
            page << "alert('You do not have permission to add members to any of the selected groups')";
          else
            success_str = "";
            if unpresent.length ==1
              success_str << "#{class_name} was added to 1 group. "
            elsif unpresent.length >1
              success_str << "#{class_name} was added to #{unpresent.length} groups. "
            end
            if present.length == 1
              success_str << "#{class_name} was not added to 1 group because it was already in it. "
            elsif present.length >1
              success_str << "#{class_name} was not added to #{present.length} groups because it was already in them. "
            end
            if wrong_types.length == 1
              success_str << "#{class_name} was not added to 1 group because it was of the wrong type. "
            elsif wrong_types.length > 1
              success_str << "#{class_name} was not added to #{wrong_types.length} groups because they were of the wrong type. "
            end
            if unpermissioned.length == 1
              success_str << "#{class_name} was not added to 1 group because you did not have permission to update this group. "
            elsif unpermissioned.length >1
              success_str << "#{class_name} was not added to #{unpermissioned.length} groups because you did not have permission to update these groups. "
            end
            page << "alert('#{success_str}')";
          end
        end
      end
    end    
  end
  def remove_from_groups(group_ids, class_id, class_name)
    @user_id = session[:user_id];
    if group_ids.length >0
      group_ids_str = "";
      group_ids.each do |group_id|
        if(group_ids_str.length >0)
          group_ids_str << ", "
        end
        group_ids_str << group_id.to_s;
      end
      group_ids_str = "(#{group_ids_str})";
      unpermissioned = Group.find_by_sql("SELECT * FROM groups WHERE id IN #{group_ids_str} AND table_name = '#{class_name.tableize}' AND (owner_id != #{@user_id} AND private = true)")
      wrong_types = Group.find_by_sql("SELECT * FROM groups WHERE id IN #{group_ids_str} AND table_name != '#{class_name.tableize}' AND (owner_id = #{@user_id} OR private = false)")
      permissioned = Group.find_by_sql("SELECT * FROM groups WHERE id IN #{group_ids_str} AND table_name = '#{class_name.tableize}' AND (owner_id = #{@user_id} OR private = false)")
      if permissioned.length >0
        permission_id_str = "";
        permissioned.each do |permission_group|
          if(permission_id_str.length > 0)
            permission_id_str << ", "
          end
          permission_id_str << permission_group.id.to_s
        end
         permission_id_str = "(#{permission_id_str})"
         sql_str = "SELECT * FROM groups a0 WHERE a0.id IN #{permission_id_str} AND (SELECT COUNT(*) FROM group_#{class_name.tableize} WHERE group_id = a0.id AND #{class_name.underscore}_id = #{class_id})=0"
         unpresent = Group.find_by_sql(sql_str);
         present = Group.find_by_sql("SELECT * FROM group_#{class_name.tableize} WHERE group_id  IN #{permission_id_str} AND #{class_name.underscore}_id = #{class_id}");

         present.each do |group_member|
           destroy_str = "Group#{class_name}.destroy(#{group_member.id})"
           eval(destroy_str);

         end
      end
    end

    respond_to do |format|
      format.js  do
        render :update do |page|
          if(group_ids.length == 0)
            page << "alert('Remove Selected Failed: You did not select any groups')"
          elsif permissioned.length == 0
            page << "alert('You do not have permission to remove members from any of the selected groups')";
          else
            success_str = "";
            if present.length ==1
              success_str << "#{class_name} was removed from 1 group. "
            elsif present.length >1
              success_str << "#{class_name} was removed from #{present.length} groups. "
            end
            if unpresent.length == 1
              success_str << "#{class_name} was not removed from 1 group because it was not there to begin with. "
            elsif unpresent.length >1
              success_str << "#{class_name} was not removed from #{unpresent.length} groups because it was not there to begin with. "
            end
            if wrong_types.length == 1
              success_str << "#{class_name} was not removed from 1 group because it was of the wrong type. "
            elsif wrong_types.length > 1
              success_str << "#{class_name} was not removed from #{wrong_types.length} groups because they were of the wrong type. "
            end
            if unpermissioned.length == 1
              success_str << "#{class_name} was not removed from 1 group because you did not have permission to update this group. "
            elsif unpermissioned.length >1
              success_str << "#{class_name} was not removed from #{unpermissioned.length} groups because you did not have permission to update these groups. "
            end
            page << "alert('#{success_str}')";
          end
        end
      end
    end
  end


  def add_to_group(group_id, ids, class_name2)

  @user_id = session[:user_id];
  db_group = Group.find(group_id);
  permission = false
  class_ok= false
    if(db_group != nil)
      if db_group.private == false || db_group.owner_id = @user_id
        permission = true;
      end
    end

    if(permission)
      if(class_name2.tableize == db_group.table_name)
        class_ok= true;
        if (ids.length > 0)
        id_str = ""
        ids.each do |id|
          if id_str.length >0
            id_str << ", "
          end
          id_str << id.to_s;
        end
        already_existing = Group.find_by_sql("SELECT * FROM group_#{class_name2.tableize} WHERE #{class_name2.underscore}_id IN (#{id_str}) AND group_id = #{group_id}");
        new_members = Array.new(ids);
        already_existing.each do |existing|
          existing_id_str = "existing.#{class_name2.underscore}_id";
          existing_id = eval(existing_id_str)
          new_members.delete(existing_id);
        end
        new_members.each do |new_id|
          new_group_member_str = "Group#{class_name2}.new"
          new_group_member = eval(new_group_member_str);
          new_group_member.group_id = db_group.id;
          new_group_member_id_str = "new_group_member.#{class_name2.underscore}_id = #{new_id}"
          eval(new_group_member_id_str);
          new_group_member.save;
        end
      end
    end
    end
  
   respond_to do |format|
      format.js  do
        render :update do |page|
          if(db_group== nil)
          page << "alert('Add Selected Failed: Could not find group id #{group_id} in database')"
          elsif(!permission )
            page << "alert('Add Selected Failed: You do not have permission to edit group #{db_group.group_name}')"
          elsif(!class_ok)
            page << "alert('Add Selected Failed: The #{db_group.group_name} is for members of type #{db_group.table.classify} rather than type #{class_name2}')"
          elsif(ids.length == 0)
            page << "alert('Add Selected Failed: You have not selected any #{db_group.table_name}')"
          else
            success_str = ""
            if already_existing.length == 1
              success_str << "1 #{class_name2} was already in the group #{db_group.group_name}. "
            elsif already_existing.length >1
              success_str << "#{already_existing.length} #{class_name2.tableize} were already in the group #{db_group.group_name}. "
            end
            if new_members.length == 1
              success_str <<  "1 #{class_name2} was added to the group #{db_group.group_name}. "
            elsif new_members.length > 1
              success_str << "#{new_members.length} #{class_name2.tableize} were added to the group #{db_group.group_name}"
            end
            page << "alert('#{success_str}')"
          end
        end
      end
    end

  end

  def new_group(ids, class_name, group_name, group_privacy)
    group_name = group_name.gsub(/^\s+/,'').gsub(/\s+$/,'');
    if(group_name.length ==0)
      respond_to do |format|
        format.js  do
          render :update do |page|
       page << "alert(\"Group creation failed: the chosen group name #{group_name} can't be an empty string.\")"
          end
        end
      end
      return;
    end

    table_name = class_name.tableize;
    existing_group = Group.find(:first, :conditions =>{:group_name => group_name, :table_name => table_name});
    if(existing_group == nil)

      new_group = Group.new;
      new_group.group_name = group_name;
      new_group.table_name = table_name;
      new_group.owner_id= session[:user_id];
      new_group.readers_id = 1;
      new_group.writers_id = 1;
      new_group.private = group_privacy;
      new_group.save;

      if ids != nil
        for id in ids
          new_group_member_str = "Group#{class_name}.new"
          new_group_member =  eval(new_group_member_str);
          new_group_member.group_id = new_group.id
          new_group_member_member_str= "new_group_member.#{class_name.underscore}_id = #{id}"
          eval(new_group_member_member_str);
          new_group_member.save;
        end
      end

    end
    respond_to do |format|
        format.js  do
          render :update do |page|
            if(existing_group ==nil)
             page << "alert(\"Successfully created #{class_name} group with name #{group_name}\")"
             page << "add_group(\"#{class_name}\",\"#{group_name}\", \"#{new_group.id}\")"
            else
              page << "alert(\"Group creation failed: #{class_name} group with name #{group_name} already exists.\")"
            end
          end
        end
      end

  end
  def check_dependencies(ids, table_name)
     dependencies_present = "";
    if(ids.length == 0)
      return dependencies_present 
    end
    has_many_str = table_name + ".reflect_on_all_associations(:has_many)";
    has_manys = eval(has_many_str);
   
    dependent_str ="";
    id_str = "";
    for id in ids
      if id_str.length>0
        id_str << ", "
      end
      id_str << id.to_s;
    end
    for has_many in has_manys
      dependent_table_name = has_many.class_name;
      reflection_str = dependent_table_name + ".reflect_on_all_associations(:belongs_to)"
      reflections = eval(reflection_str);
      for reflection in reflections
        if reflection.class_name == table_name
          foreign_key = reflection.options[:foreign_key];
          objects_str = "#{reflection.class_name}.find_by_sql(\"SELECT id, #{foreign_key} FROM #{ dependent_table_name.tableize} WHERE #{foreign_key} IN (#{id_str})\")"

          objects = eval(objects_str);
          for object in objects
            if dependent_str.length>0
              dependent_str << ", "
            end
            dependent_str << dependent_table_name + " with id = " + object.id.to_s;
          end
        end
      end

    end
    if dependent_str.length > 0
      if ids.length ==1
        dependencies_present = table_name + " with id = " + ids[0].to_s + " depends on "
      else
        dependencies_present = table_name.pluralize + " with ids = "

        dependencies_present << id_str + " depend on "
      end
      dependencies_present  << dependent_str
    end

    return dependencies_present;
  end

  def delete_array(ids, table_name)

    if table_name !="user"
      dependencies_present = check_dependencies(ids, table_name)
    else
      dependencies_present =[];
    end
    if dependencies_present.length > 0
      respond_to do |format|
        format.js  do
          render :update do |page|
            page << "alert(\"Delete failed because of current dependencies. #{dependencies_present}\")"
          end
        end
      end
    elsif ids.length == 0
        respond_to do |format|
        format.js  do
          render :update do |page|
             page << "alert(\"No deletion occurred as you didn't select anything #{dependencies_present}\")"
          end
        end
        end
    else
      current_objs_str = "#{table_name}.find(ids)"
      objects = eval(current_objs_str);
      for object in objects
        object.destroy
      end
      respond_to do |format|
        format.js  do
          render :update do |page|

            id_str = "";
            for id in ids
              if id_str.length>0
                id_str << ", "
              end
              id_str << id.to_s;
            end
            page << "on_del(\"#{table_name}\", [#{id_str}]);"

          end
        end
      end
    end
  end

  def delete
    table_name = params[:table_name];
    id = params[:id];
    ids =[];
    ids << id.to_i;
    delete_array(ids, table_name);
  end

  def remove_dependencies(ids, table_name, dependent_table_name)
    reflection_str = dependent_table_name + ".reflect_on_all_associations(:belongs_to)"
    reflections = eval(reflection_str);
    @update_hash["#{dependent_table_name}"]={}
    for reflection in reflections
      if(reflection.class_name == table_name)
        foreign_key = reflection.options[:foreign_key];
        id_str = "";
        for id in ids
          if id_str.length>0
            id_str << ", "
          end
          id_str << id.to_s;
        end

        objects_str = "#{reflection.class_name}.find_by_sql(\"SELECT id, #{foreign_key} FROM #{ dependent_table_name.tableize} WHERE #{foreign_key} IN (#{id_str})\")"
        
        objects = eval(objects_str);
        object_update_str = "object.#{foreign_key} = 1"
        update_ids =[];
        for object in objects
          eval(object_update_str)
          object.save;
          update_ids << object.id;
        end
        @update_hash["#{dependent_table_name}][#{foreign_key}"] = update_ids;
      end
    end

  end


  def update_formats
    user_id = session[:user_id];
    @format_controller =  FormatController.new(user_id);
    for table_object in @format_controller.table_objects
      sql_str = "FormatElement.find_by_sql(\"SELECT id, field_name, insert_string, element_order, in_use FROM format_elements WHERE (user_id = " + user_id.to_s +  " AND table_name = '" + table_object.table + "') ORDER BY element_order asc\")"
      RAILS_DEFAULT_LOGGER.error( "DEBUG: before eval(#{sql_str})" );
      old_fields = eval(sql_str);
      old_fields_count  = old_fields.length;
      new_fields_count = params["display_format_count_#{table_object.table}"].to_i;
      for i in (0..(new_fields_count-1))
        if i>=old_fields_count
          format_elt = FormatElement.new;
        else
          format_elt = old_fields[i];
        end
        format_elt.table_name = table_object.table;
        format_elt.user_id = user_id;
        format_elt.field_name = params["display_format_field_#{table_object.table}_#{i}"];
        format_elt.insert_string = params["display_format_string_#{table_object.table}_#{i}"];
        format_elt.element_order = i;
        format_elt.in_use = true;
        format_elt.save;


      end
      if old_fields_count > new_fields_count
        for i in (new_fields_count..(old_fields_count-1))
          old_fields[i].in_use =false;
          old_fields[i].save;
        end
      end
    end
    @format_controller.Update();

    respond_to do |format|
      format.js  do
        render :update do |page|
          page.replace_html("format_controller_div", :partial => "shared/format_controller", :object => @format_controller);
          page << "resizeFormat()";
        end
      end
    end
  end

  def edit
    table_name = params[:table_name];
    id = params[:id];
    object_str = "#{table_name}.find(id)";
    new_current_object  = eval(object_str );
    if new_current_object
      @current_object  = new_current_object
    end
    if new_current_object
      respond_to do |format|
        format.html {redirect_to person  }
      end
    else
      fail_str = "Failed  to find #{@table_str}  with id #{id}."
      flash[:notice] = fail_str;
      respond_to do |format|
        format.html   { redirect_to person }
      end
    end
    RAILS_DEFAULT_LOGGER.error("welcome/edit end")
  end

  def update_group_filters
 
    table_name = params[:group_filters_table_name]
    foreign_key = params[:group_filters_foreign_key];
    group_id = params[:group_id];
    @user_id = session[:user_id];
    sql_str = "GroupFilter.find_by_sql(\"SELECT id, table_name, group_id, foreign_key, user_id  FROM group_filters WHERE (user_id = " + @user_id.to_s +  " AND table_name = '" + table_name + "' AND foreign_key = '" +foreign_key + "') \")"
    RAILS_DEFAULT_LOGGER.error( "DEBUG: before eval(#{sql_str})" );
    group_filters = eval(sql_str);
    if group_filters.length == 0
      group_filter = GroupFilter.new;
      group_filter.table_name = table_name;
      group_filter.foreign_key= foreign_key;
      group_filter.user_id = @user_id;
    else
      group_filter = group_filters[0];

    end
    group_filter.group_id = group_id;
    group_filter.save;
    group_filters = FilterController.GetGroupFilters(table_name, @user_id)
    respond_to do |format|
      format.js  do
        render :update do |page|
         
          page.replace_html("group_filters_#{table_name}", :partial => "shared/group_filters", :object => group_filters);
        end
      end
    end
  end


  def SetNotClass(class_name)
    @snc_level = @snc_level+1
    if @snc_level >10
      @snc_level = @snc_level-1;
      return;
    end

   
    find_first_str = "#{class_name}.find(:first)"
    first_obj = eval(find_first_str)
    if(first_obj == nil)
      new_str = class_name +".new"
      not_set_obj = eval(new_str)
      reflection_str = class_name + ".reflect_on_all_associations(:belongs_to)"
      reflections = eval(reflection_str)
      for reflection in reflections

        SetNotClass(reflection.class_name)
        field_name = reflection.options[:foreign_key]

        eval_str = "not_set_obj.#{field_name} = @not_set_value"
        RAILS_DEFAULT_LOGGER.error( "DEBUG: before SetNotClass(#{class_name}) eval(#{eval_str})" );
        eval(eval_str);
      end
      not_set_obj.save;
    end
    @snc_level = @snc_level-1;
  end

  def div_test
    x = 1;
        term = Term.find(20);
    person = Person.find(32);
    course = Course.find(112);
   lecture_schedules = Lecture.find_by_sql("SELECT * FROM lectures WHERE course_id = #{course.id} AND term_id = #{term.id}");     if lecture_schedules.length >0 then       lecture_id = lecture_schedules[0].id;      exam_attendees = Attendee.find_by_sql("SELECT *, a1.first_name || ' ' || a1.second_name AS student_name FROM attendees a0 INNER JOIN people a1 ON a1.id=a0.person_id AND a0.lecture_id = #{lecture_id} AND a0.examined= true ORDER BY student_name");      non_exam_attendees =  Attendee.find_by_sql("SELECT *, a1.first_name || ' ' || a1.second_name AS student_name FROM attendees a0 INNER JOIN people a1 ON a1.id=a0.person_id AND a0.lecture_id = #{lecture_id} AND a0.examined= false ORDER BY student_name");    else      exam_attendees = [];      non_exam_attendees = [];    end;
    



        EmailTemplate.create(:template_name =>"Class list and reminder of exam arrangements",
      :from_email => "<%= me.email %>",
      :subject => "Class and exam list for the coming Term at Blackfriars",
      :ruby_header=> %q{<% lecture_schedules = Lecture.find_by_sql("SELECT * FROM lectures WHERE course_id = #{course.id} AND term_id = #{term.id}");     if lecture_schedules.length >0 then       lecture_id = lecture_schedules[0].id;      exam_attendees = Attendee.find_by_sql("SELECT *, a1.first_name || ' ' || a1.second_name AS student_name FROM attendees a0 INNER JOIN people a1 ON a1.id=a0.person_id AND a0.lecture_id = #{lecture_id} AND a0.examined= true ORDER BY student_name");      non_exam_attendees =  Attendee.find_by_sql("SELECT *, a1.first_name || ' ' || a1.second_name AS student_name FROM attendees a0 INNER JOIN people a1 ON a1.id=a0.person_id AND a0.lecture_id = #{lecture_id} AND a0.examined= false ORDER BY student_name");    else      exam_attendees = [];      non_exam_attendees = [];    end;%>},
      :body=> %q{Dear <%= person.salutation %>,<br><br>This email concerns the lecture course on <%=course.name%> for the current Term. <% if (exam_attendees.length + non_exam_attendees.length) >0 %> As I understand it, the following students are supposed to attend the lecture course – there may well be others in the class, for whom it is optional.<br><% if exam_attendees.length >0 %> <br><b>Students needing an end-of-term examination</b>:<br><br>These students need a grade for the course, but are not taking tutorials in the subject. The lecturer normally determines the exam format (often a short viva-voce exam) and scope, and explains this to the students. Exams are usually held on the Monday or Tuesday of 9th Week, at a time to suit the lecturer and the students involved.<br><br><% exam_attendees.each do |attendee|%> <%=attendee.student_name%><br><%end%><br><%end%><% if non_exam_attendees.length >0 %> <b>Students not needing an end-of-term examination</b>:<br><br><% non_exam_attendees.each do |attendee|%> <%=attendee.student_name%><br><%end%><br><%end%><% else%>No one needs to be examined in this course and no one is required to attend.<%end%>If anything seems odd, surprising, alarming, or even wrong with these arrangements, let me know.<br><br>With best wishes,<br><br>Richard.<br><br>(Richard Conrad, O.P., vice-regent)<br><br>},
      :term_dependency=>true,
      :course_dependency=>false,
      :global_warnings=>"",
      :personal_warnings=>"");

    respond_to do |format|
      format.js  do
        render :update do |page|

          page << "alert('div_test!')"
        end
      end
    end
  end


  def import_csv
    RAILS_DEFAULT_LOGGER.error( "import_csv begin" );
    if session[:user_id]!=1

      return;
    end


    old_institution_ids = [];
    new_institution_ids = [];

    old_person_ids = [];
    new_person_ids = [];

    old_course_ids = [];
    new_course_ids = [];

    old_term_ids = [];
    new_term_ids = [];

    old_group_ids = [];
    new_group_ids = [];

    old_lecture_ids = [];
    new_lecture_ids = [];

    old_day_ids = [];
    new_day_ids = [];



    @not_set_value = SearchController::NOT_SET;
    @snc_level = 0;
    all_tables = ActiveRecord::Base.connection.tables;
    for t in all_tables
      if (t =~ /csvs$/ || t =~ /schema_migrations/ || t =~ /sessions/) == nil
        SetNotClass(t.classify)
      end
    end
    csv_terms = TermCsv.find(:all);
    for csv_term in csv_terms
      new_term = Term.new;
      new_term.term_name_id = csv_term.name ;
      new_term.term_name_id = new_term.term_name_id+1;
      new_term.year = csv_term.year;
      if new_term.term_name_id>=1 && new_term.term_name_id<=4
        new_term.save;
        old_term_ids << csv_term.id;
        new_term_ids << new_term.id;
      end
    end
    RAILS_DEFAULT_LOGGER.error( "import_csv done terms" );
    RAILS_DEFAULT_LOGGER.flush
    status_csvs = StatusCsv.find(:all);


    for csv_status in status_csvs
      group = Group.new;
      group.table_name = "people"
      group.group_name = csv_status.status;
      group.owner_id = 1;
      group.readers_id = 0;
      group.writers_id = 1;
      group.private = false;

      group.save;
      old_group_ids << csv_status.id;
      new_group_ids << group.id;
    end
        RAILS_DEFAULT_LOGGER.error( "import_csv done groups" );
    RAILS_DEFAULT_LOGGER.flush

    people_csvs = PersonCsv.find(:all);

    institutuion_group = Group.new;
    institutuion_group.table_name = "institutions"
    institutuion_group.group_name = "Institutions"
    institutuion_group.owner_id = 1;
    institutuion_group.readers_id = 0;
    institutuion_group.writers_id = 1;
    institutuion_group.private = false;
    institutuion_group.save;

    religious_group = Group.new;
    religious_group.table_name = "institutions"
    religious_group.group_name = "Religious Houses"
    religious_group.owner_id = 1;
    religious_group.readers_id = 0;
    religious_group.writers_id = 1;
    religious_group.private = false;
    religious_group.save



    
    for people_csv in people_csvs

      person = Person.new;
      person.title = people_csv.title;
      person.first_name = people_csv.first_name;
      person.second_name = people_csv.second_name;
      person.postnomials = people_csv.postnominals;
      person.salutation = people_csv.salutation;
      person.term_address = people_csv.term_address;
      person.term_city = people_csv.term_city;
      person.term_postcode = people_csv.term_postcode;
      person.term_home_phone = people_csv.term_home_phone;
      person.term_work_phone = people_csv.term_work_phone;
      person.mobile = people_csv.mobile;
      person.email = people_csv.email;
      person.other_address = people_csv.other_address;
      person.other_city = people_csv.other_city;
      person.other_postcode = people_csv.other_postcode;
      person.other_home_phone = people_csv.other_home_phone;
      person.fax = people_csv.Fax;
      person.notes = people_csv.Notes;
      entry_year = people_csv.entry_year
      if entry_year == nil
        person.entry_term_id = SearchController::NOT_SET;
      else
      entry_terms = Term.find_by_sql("SELECT * FROM terms WHERE year = #{entry_year} LIMIT 1")

      if( entry_terms.length >0 )
        person.entry_term_id = entry_terms[0].id;
      else
        person.entry_term_id = SearchController::NOT_SET;
      end
      end
      person.next_of_kin = people_csv.next_of_kin;
      person.conventual_name = people_csv.conventual_name;

      status_ids = PersonstatusCsv.find(:all,:conditions => ["person_id = ?", people_csv.id]);
      status_id_array = [];
      for status_obj_id in status_ids
        status_id_array << status_obj_id.status_id
      end

      inst_id = people_csv.home_institution;
      relig_id = people_csv.religious_house;



      inst_ids = [inst_id, relig_id];
      new_ids = [];


      for i in (0..1)
        id = inst_ids[i];
        if id !=0 && id !=nil
          processed_id =  old_institution_ids.index(id);
          if processed_id != nil
            new_ids <<  new_institution_ids[processed_id];
          else
            if institution = PersonCsv.find(id)
              new_institution = Institution.new;
              new_institution.old_name = institution.old_name;
              new_institution.title = institution.title;
              new_institution.first_name = institution.first_name;
              new_institution.second_name = institution.second_name;
              new_institution.salutation = institution.salutation;
              new_institution.term_address = institution.term_address;
              new_institution.term_city = institution.term_city;
              new_institution.term_postcode = institution.term_postcode;
              new_institution.conventual_name = institution.conventual_name;

              # new_institution.institution_type = i;
              new_institution.save;
              if i == 0
                institutuion_group_member = GroupInstitution.new;
                institutuion_group_member.group_id = institutuion_group.id;
                institutuion_group_member.institution_id = new_institution.id
                institutuion_group_member.save;
              else
                institutuion_group_member = GroupInstitution.new;
                institutuion_group_member.group_id = religious_group.id;
                institutuion_group_member.institution_id = new_institution.id
                institutuion_group_member.save;
              end
              old_institution_ids << id;
              new_institution_ids << new_institution.id;
              new_ids << new_institution.id;
            else
              new_ids << 0;
            end
          end
        else
          new_ids << 0;
        end
        if new_ids[0]!=0
          person.institution_id = new_ids[0];
        else
          person.institution_id = @not_set_value;
        end
        if new_ids[1]!=0
          person.religious_house_id = new_ids[1];
        else
          person.religious_house_id = @not_set_value;
        end
      end

      if status_id_array.index(19)||status_id_array.index(20)
        if old_institution_ids.index(people_csv.id) == nil
          new_institution = Institution.new;
          new_institution.old_name = people_csv.old_name;
          new_institution.title = people_csv.title;
          new_institution.first_name = people_csv.first_name;
          new_institution.second_name = people_csv.second_name;
          new_institution.salutation = people_csv.salutation;
          new_institution.term_address = people_csv.term_address;
          new_institution.term_city = people_csv.term_city;
          new_institution.term_postcode = people_csv.term_postcode;
          new_institution.conventual_name = people_csv.conventual_name;

          new_institution.save;
          if status_id_array.index(20)
            institutuion_group_member = GroupInstitution.new;
            institutuion_group_member.group_id = institutuion_group.id;
            institutuion_group_member.institution_id = new_institution.id
            institutuion_group_member.save;
          else
            institutuion_group_member = GroupInstitution.new;
            institutuion_group_member.group_id = religious_group.id;
            institutuion_group_member.institution_id = new_institution.id
            institutuion_group_member.save;
          end

          old_institution_ids << people_csv.id;
          new_institution_ids << new_institution.id;
        end
      else
        person.save;
        old_person_ids << people_csv.id;
        new_person_ids << person.id;
        for status_val in status_id_array

          status_index = old_group_ids.index(status_val);
          if status_index != nil
            begin
              group_person = GroupPerson.new;
              group_person.group_id = new_group_ids[status_index];
              group_person.person_id = person.id;
              group_person.save;
            rescue Exception =>exc
              RAILS_DEFAULT_LOGGER.error( "DEBUG: an exception has occurred" );
            end
          end
        end
      end
    end
        RAILS_DEFAULT_LOGGER.error( "import_csv done people" );
    RAILS_DEFAULT_LOGGER.flush

    csv_courses = CourseCsv.find(:all);
    for csv_course in csv_courses
      new_course = Course.new;
      new_course.name =  csv_course.course_name;
      new_course.save;
      old_course_ids << csv_course.id;
      new_course_ids << new_course.id;
    end

        RAILS_DEFAULT_LOGGER.error( "import_csv done courses" );
    RAILS_DEFAULT_LOGGER.flush





    csv_days = DayCsv.find(:all);


    for csv_day in csv_days
      day = Day.new;
      day.long_name = csv_day.long_name;
      day.short_name = csv_day.short_name;
      if csv_day.long_name =~ /Sunday/
        day.sunday = true;
      else
        day.sunday = false;
      end
      if csv_day.long_name =~ /Monday/
        day.monday = true;
      else
        day.monday = false;
      end
      if csv_day.long_name =~ /Tuesday/
        day.tuesday = true;
      else
        day.tuesday = false;
      end
      if csv_day.long_name =~ /Wednesday/
        day.wednesday = true;
      else
        day.wednesday = false;
      end
      if csv_day.long_name =~ /Thursday/
        day.thursday = true;
      else
        day.thursday = false;
      end
      if csv_day.long_name =~ /Friday/
        day.friday = true;
      else
        day.friday = false;
      end
      if csv_day.long_name =~ /Saturday/
        day.saturday = true;
      else
        day.saturday = false;
      end

      day.save;

      old_day_ids << csv_day.id;
      new_day_ids << day.id;
    end

    RAILS_DEFAULT_LOGGER.error( "import_csv done days" );
    RAILS_DEFAULT_LOGGER.flush


    csv_lectures = LectureCsv.find(:all);
    for csv_lecture in csv_lectures
      course_index = old_course_ids.index(csv_lecture.course);
      term_index = old_term_ids.index(csv_lecture.term);
      tutor_index = old_person_ids.index(csv_lecture.tutor);
      day_index = old_day_ids.index(csv_lecture.day);
      if( course_index != nil && term_index != nil && tutor_index != nil && day_index !=nil)
        new_lecture = Lecture.new;
        new_lecture.term_id = new_term_ids[term_index];
        new_lecture.course_id = new_course_ids[course_index];
        new_lecture.person_id = new_person_ids[tutor_index];
        new_lecture.exam = csv_lecture.examination;
        new_lecture.day_id = new_day_ids[day_index];
        new_lecture.location_id = @not_set_value;;
        if csv_lecture.lecture_time =~/12:13/
          x = 1;
        else
          new_lecture.lecture_time = csv_lecture.lecture_time;
        end
        new_lecture.lecture_time = csv_lecture.lecture_time;
        new_lecture.number_of_classes = csv_lecture.number_of_classes;
        new_lecture.number_of_lectures = csv_lecture.number_of_lectures;
        new_lecture.hours = csv_lecture.hours;
        new_lecture.notes = csv_lecture.notes;
        new_lecture.save;
        old_lecture_ids << csv_lecture.id;
        new_lecture_ids << new_lecture.id;
      end
    end
    RAILS_DEFAULT_LOGGER.error( "import_csv done lectures" );
    RAILS_DEFAULT_LOGGER.flush

    csv_attendees = AttendeeCsv.find(:all);
    for csv_attendee in csv_attendees
      lecture_index = old_lecture_ids.index(csv_attendee.lectures_course);
      person_index = old_person_ids.index(csv_attendee.student);
      if(lecture_index != nil && person_index != nil)
        begin
          new_attendee = Attendee.new;
          new_attendee.lecture_id = new_lecture_ids[lecture_index];
          new_attendee.person_id = new_person_ids[person_index];
          new_attendee.compulsory = csv_attendee.compulsory;
          new_attendee.comment = csv_attendee.mark;
          new_attendee.examined = csv_attendee.examined;
          new_attendee.save;
        rescue Exception => exc
          RAILS_DEFAULT_LOGGER.error( "DEBUG: an exception has occurred" );
        end
      end
    end
        RAILS_DEFAULT_LOGGER.error( "import_csv done attendees" );
    RAILS_DEFAULT_LOGGER.flush


    csv_willing_teachers = WillingTeacherCsv.find(:all);
    for csv_willing_teacher in csv_willing_teachers
      person_index = old_person_ids.index(csv_willing_teacher.tutor);
      course_index = old_course_ids.index(csv_willing_teacher.course);
      if(person_index !=nil && course_index !=nil)
        willing_teacher = WillingTeacher.new;
        willing_teacher.person_id = new_person_ids[person_index];
        willing_teacher.course_id = new_course_ids[course_index];
        willing_teacher.can_lecture = true;
        willing_teacher.can_tutor = true;
        willing_teacher.notes = csv_willing_teacher.notes;
        willing_teacher.save;
      end
    end

        RAILS_DEFAULT_LOGGER.error( "import_csv done willing teachers" );
    RAILS_DEFAULT_LOGGER.flush


    csv_tutorials = TutorialCsv.find(:all);
    for csv_tutorial in csv_tutorials
      student_index = old_person_ids.index(csv_tutorial.student);
      course_index = old_course_ids.index(csv_tutorial.course);
      term_index = old_term_ids.index(csv_tutorial.term);
      tutor_index = old_person_ids.index(csv_tutorial.tutor);
      if(student_index !=nil && course_index != nil && term_index != nil && tutor_index !=nil)
        tutorial = Tutorial.new;
        tutorial_schedule = TutorialSchedule.find(:first, :conditions => ["person_id = ? AND course_id = ? AND term_id = ?",
            new_person_ids[tutor_index], new_course_ids[course_index], new_term_ids[term_index]]);
        if(tutorial_schedule == nil)
          tutorial_schedule = TutorialSchedule.new;
          tutorial_schedule.person_id = new_person_ids[tutor_index];
          tutorial_schedule.course_id =  new_course_ids[course_index];
          tutorial_schedule.term_id = new_term_ids[term_index];
          tutorial_schedule.number_of_tutorials = 0;
          tutorial_schedule.save;
        end
        tutorial.person_id = new_person_ids[student_index];
        tutorial.tutorial_schedule_id = tutorial_schedule.id;
        tutorial_hours = csv_tutorial.hours;
        if tutorial_hours !=nil && tutorial_hours != 0
          tutorial_schedule.number_of_tutorial_hours  = tutorial_hours;
        else
          tutorial_schedule.number_of_tutorial_hours = 0
        end
        tutorial.notes = csv_tutorial.notes
        tutorial.comment = csv_tutorial.mark;
        tutorial_schedule.number_of_tutorials =  csv_tutorial.number;
        tutorial_schedule.save;
        begin
          tutorial.save;
        rescue Exception => exc
          RAILS_DEFAULT_LOGGER.error( "DEBUG: an exception has occurred" );
        end
      end
    end

    courses = Course.find(:all);
    courses.each do |course|
      if course.id != SearchController::NOT_SET
      tutors = TutorialSchedule.find_by_sql("SELECT person_id, max(term_id) AS term_id FROM tutorial_schedules WHERE course_id = #{course.id} GROUP BY person_id ORDER BY term_id DESC")
      preference = 1
      tutors.each do |tutor|
        willing_tutor = WillingTutor.new;
        willing_tutor.person_id = tutor.person_id;
        willing_tutor.course_id = course.id;
        willing_tutor.order_of_preference = preference;
        preference = preference +1;
        willing_tutor.save;
      end

      lecturers = Lecture.find_by_sql("SELECT person_id, max(term_id) AS term_id FROM lectures WHERE course_id = #{course.id} GROUP BY person_id ORDER BY term_id DESC");
      preference = 1;
      lecturers.each do |lecturer|

        willing_lecturer = WillingLecturer.new;
        willing_lecturer.person_id = lecturer.person_id;
        willing_lecturer.course_id = course.id;
        willing_lecturer.order_of_preference = preference;
        preference = preference + 1;
        willing_lecturer.save;
      end
      end

    end

    RAILS_DEFAULT_LOGGER.error( "import_csv done tutorials" );
    RAILS_DEFAULT_LOGGER.flush

    term_name1 = TermName.new;
    term_name1.name = "Hilary"
    term_name1.save;
    term_name2 = TermName.new;
    term_name2.name = "Trinity"
    term_name2.save;
    term_name3 = TermName.new;
    term_name3.name = "Michaelmas"
    term_name3.save;

    FormatElement.create(:user_id => 0, :table_name => 'people', :field_name => 'second_name', :insert_string => ', ', :element_order => 1, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'people', :field_name => 'first_name', :insert_string => '', :element_order => 2, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'courses', :field_name => 'name', :insert_string => ' ', :element_order => 1, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'institutions', :field_name => 'conventual_name', :insert_string => ' ', :element_order => 1, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'groups', :field_name => 'group_name', :insert_string => '', :element_order => 1, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'lectures', :field_name => 'course_id', :insert_string => ', ', :element_order => 1, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'lectures', :field_name => 'term_id', :insert_string => ' ', :element_order => 2, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'term_names', :field_name => 'name', :insert_string => ' ', :element_order => 1, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'terms', :field_name => 'term_name_id', :insert_string => ' ', :element_order => 1, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'terms', :field_name => 'year', :insert_string => ' ', :element_order => 2, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'days', :field_name => 'short_name', :insert_string => ' ', :element_order => 1, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'locations', :field_name => 'name', :insert_string => ' ', :element_order => 1, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'tutorial_schedules', :field_name => 'course_id', :insert_string => ' ', :element_order => 1, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'group_people', :field_name => 'group_id', :insert_string => ', ', :element_order => 1, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'group_people', :field_name => 'person_id', :insert_string => '', :element_order => 2, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'group_institutions', :field_name => 'group_id', :insert_string => ', ', :element_order => 1, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'group_institutions', :field_name => 'institution_id', :insert_string => '', :element_order => 2, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'group_courses', :field_name => 'group_id', :insert_string => ', ', :element_order => 1, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'group_courses', :field_name => 'course_id', :insert_string => '', :element_order => 2, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'group_lectures', :field_name => 'group_id', :insert_string => ', ', :element_order => 1, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'group_lectures', :field_name => 'lecture_id', :insert_string => '', :element_order => 2, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'group_attendees', :field_name => 'group_id', :insert_string => ', ', :element_order => 1, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'group_attendees', :field_name => 'attendee_id', :insert_string => '', :element_order => 2, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'group_tutorial_schedules', :field_name => 'group_id', :insert_string => ', ', :element_order => 1, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'group_tutorial_schedules', :field_name => 'tutorial_schedule_id', :insert_string => '', :element_order => 2, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'group_tutorials', :field_name => 'group_id', :insert_string => ', ', :element_order => 1, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'group_tutorials', :field_name => 'tutorial_id', :insert_string => '', :element_order => 2, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'group_users', :field_name => 'group_id', :insert_string => ', ', :element_order => 1, :in_use => true)
    FormatElement.create(:user_id => 0, :table_name => 'group_users', :field_name => 'user_id', :insert_string => '', :element_order => 2, :in_use => true)

     FormatElement.create(:user_id => 0, :table_name => 'users', :field_name => 'name', :insert_string => '', :element_order => 1, :in_use => true);

        RAILS_DEFAULT_LOGGER.error( "import_csv done format elements" );
    RAILS_DEFAULT_LOGGER.flush

    DisplayFilter.create(:user_id => 0, :table_name => 'people', :filter_index => 0, :element_order => 0, :in_use => true);
    DisplayFilter.create(:user_id => 0, :table_name => 'people', :filter_index => 1, :element_order => 1, :in_use => true);
    DisplayFilter.create(:user_id => 0, :table_name => 'people', :filter_index => 2, :element_order => 2, :in_use => true);
    DisplayFilter.create(:user_id => 0, :table_name => 'people', :filter_index => 3, :element_order => 3, :in_use => true);
    DisplayFilter.create(:user_id => 0, :table_name => 'people', :filter_index => 4, :element_order => 4, :in_use => true);
    DisplayFilter.create(:user_id => 0, :table_name => 'people', :filter_index => 12, :element_order => 4, :in_use => true);
    DisplayFilter.create(:user_id => 0, :table_name => 'attendees', :filter_index => 0, :element_order => 0, :in_use => true);
    DisplayFilter.create(:user_id => 0, :table_name => 'attendees', :filter_index => 1, :element_order => 1, :in_use => true);
    DisplayFilter.create(:user_id => 0, :table_name => 'attendees', :filter_index => 2, :element_order => 2, :in_use => true);
    DisplayFilter.create(:user_id => 0, :table_name => 'attendees', :filter_index => 3, :element_order => 3, :in_use => true);
    DisplayFilter.create(:user_id => 0, :table_name => 'attendees', :filter_index => 6, :element_order => 4, :in_use => true);

    DisplayFilter.create(:user_id => 0, :table_name => 'courses', :filter_index => 0, :element_order => 0, :in_use => true)
    DisplayFilter.create(:user_id => 0, :table_name => 'courses', :filter_index => 1, :element_order => 1, :in_use => true)

    DisplayFilter.create(:user_id => 0, :table_name => 'terms', :filter_index => 0, :element_order => 0, :in_use => true)
    DisplayFilter.create(:user_id => 0, :table_name => 'terms', :filter_index => 1, :element_order => 1, :in_use => true)
    DisplayFilter.create(:user_id => 0, :table_name => 'terms', :filter_index => 2, :element_order => 2, :in_use => true)

    DisplayFilter.create(:user_id => 0, :table_name => 'days', :filter_index => 0, :element_order => 0, :in_use => true)
    DisplayFilter.create(:user_id => 0, :table_name => 'days', :filter_index => 1, :element_order => 1, :in_use => true)

    DisplayFilter.create(:user_id => 0, :table_name => 'groups', :filter_index => 0, :element_order => 0, :in_use => true)
    DisplayFilter.create(:user_id => 0, :table_name => 'groups', :filter_index => 1, :element_order => 1, :in_use => true)
    DisplayFilter.create(:user_id => 0, :table_name => 'groups', :filter_index => 4, :element_order => 2, :in_use => true)

    DisplayFilter.create(:user_id => 0, :table_name => 'users', :filter_index => 0, :element_order => 0, :in_use => true)
    DisplayFilter.create(:user_id => 0, :table_name => 'users', :filter_index => 1, :element_order => 1, :in_use => true)
    DisplayFilter.create(:user_id => 0, :table_name => 'users', :filter_index => 6, :element_order => 2, :in_use => true)

    DisplayFilter.create(:user_id => 0, :table_name => 'willing_tutors', :filter_index => 0, :element_order => 0, :in_use => true)
    DisplayFilter.create(:user_id => 0, :table_name => 'willing_tutors', :filter_index => 1, :element_order => 1, :in_use => true)
    DisplayFilter.create(:user_id => 0, :table_name => 'willing_tutors', :filter_index => 2, :element_order => 2, :in_use => true)
    DisplayFilter.create(:user_id => 0, :table_name => 'willing_tutors', :filter_index => 3, :element_order => 3, :in_use => true)

    DisplayFilter.create(:user_id => 0, :table_name => 'willing_lecturers', :filter_index => 0, :element_order => 0, :in_use => true)
    DisplayFilter.create(:user_id => 0, :table_name => 'willing_lecturers', :filter_index => 1, :element_order => 1, :in_use => true)
    DisplayFilter.create(:user_id => 0, :table_name => 'willing_lecturers', :filter_index => 2, :element_order => 2, :in_use => true)
    DisplayFilter.create(:user_id => 0, :table_name => 'willing_lecturers', :filter_index => 3, :element_order => 3, :in_use => true)

    DisplayFilter.create(:user_id => 0, :table_name => 'maximum_tutorials', :filter_index => 0, :element_order => 0, :in_use => true)
    DisplayFilter.create(:user_id => 0, :table_name => 'maximum_tutorials', :filter_index => 1, :element_order => 1, :in_use => true)
    DisplayFilter.create(:user_id => 0, :table_name => 'maximum_tutorials', :filter_index => 2, :element_order => 2, :in_use => true)
    DisplayFilter.create(:user_id => 0, :table_name => 'maximum_tutorials', :filter_index => 3, :element_order => 3, :in_use => true)

    DisplayFilter.create(:user_id => 0, :table_name => 'email_templates', :filter_index => 0, :element_order => 0, :in_use => true)
    DisplayFilter.create(:user_id => 0, :table_name => 'email_templates', :filter_index => 1, :element_order => 1, :in_use => true)  
    DisplayFilter.create(:user_id => 0, :table_name => 'email_templates', :filter_index => 3, :element_order => 2, :in_use => true)
    DisplayFilter.create(:user_id => 0, :table_name => 'email_templates', :filter_index => 5, :element_order => 3, :in_use => true)

    DisplayFilter.create(:user_id => 0, :table_name => 'agatha_emails', :filter_index => 0, :element_order => 0, :in_use => true)
    DisplayFilter.create(:user_id => 0, :table_name => 'agatha_emails', :filter_index => 8, :element_order => 1, :in_use => true)
    DisplayFilter.create(:user_id => 0, :table_name => 'agatha_emails', :filter_index => 2, :element_order => 2, :in_use => true)
    DisplayFilter.create(:user_id => 0, :table_name => 'agatha_emails', :filter_index => 3, :element_order => 3, :in_use => true)
    DisplayFilter.create(:user_id => 0, :table_name => 'agatha_emails', :filter_index => 4, :element_order => 4, :in_use => true)

    
    Group.create(:group_name => 'BA', :table_name => 'people', :owner_id => User.find(:first, :conditions =>{:name => "agathaapp"}).id, :private => false, :readers_id => 2, :writers_id => 2)
Group.create(:group_name => '2nd BA', :table_name => 'people', :owner_id => User.find(:first, :conditions =>{:name => "agathaapp"}).id, :private => false, :readers_id => 2, :writers_id => 2)
Group.create(:group_name => 'MSt', :table_name => 'people', :owner_id => User.find(:first, :conditions =>{:name => "agathaapp"}).id, :private => false, :readers_id => 2, :writers_id => 2)
Group.create(:group_name => 'MPhil', :table_name => 'people', :owner_id => User.find(:first, :conditions =>{:name => "agathaapp"}).id, :private => false, :readers_id => 2, :writers_id => 2)
Group.create(:group_name => 'visiting student (UG - OSP)', :table_name => 'people', :owner_id => User.find(:first, :conditions =>{:name => "agathaapp"}).id, :private => false, :readers_id => 2, :writers_id => 2)
Group.create(:group_name => 'visiting student (UG - not OSP)', :table_name => 'people', :owner_id => User.find(:first, :conditions =>{:name => "agathaapp"}).id, :private => false, :readers_id => 2, :writers_id => 2)
Group.create(:group_name => "visiting student (UG - St. Clare's)", :table_name => 'people', :owner_id => User.find(:first, :conditions =>{:name => "agathaapp"}).id, :private => false, :readers_id => 2, :writers_id => 2)
Group.create(:group_name => 'visiting student (Post-Gr)', :table_name => 'people', :owner_id => User.find(:first, :conditions =>{:name => "agathaapp"}).id, :private => false, :readers_id => 2, :writers_id => 2)
Group.create(:group_name => 'PGCE', :table_name => 'people', :owner_id => User.find(:first, :conditions =>{:name => "agathaapp"}).id, :private => false, :readers_id => 2, :writers_id => 2)
Group.create(:group_name => 'Certificate in Theology', :table_name => 'people', :owner_id => User.find(:first, :conditions =>{:name => "agathaapp"}).id, :private => false, :readers_id => 2, :writers_id => 2)
Group.create(:group_name => 'BTh', :table_name => 'people', :owner_id => User.find(:first, :conditions =>{:name => "agathaapp"}).id, :private => false, :readers_id => 2, :writers_id => 2)
Group.create(:group_name => 'other', :table_name => 'people', :owner_id => User.find(:first, :conditions =>{:name => "agathaapp"}).id, :private => false, :readers_id => 2, :writers_id => 2)
Group.create(:group_name => 'Philosophy Year', :table_name => 'people', :owner_id => User.find(:first, :conditions =>{:name => "agathaapp"}).id, :private => false, :readers_id => 2, :writers_id => 2)
Group.create(:group_name => 'STB', :table_name => 'people', :owner_id => User.find(:first, :conditions =>{:name => "agathaapp"}).id, :private => false, :readers_id => 2, :writers_id => 2)
Group.create(:group_name => 'Lectorate', :table_name => 'people', :owner_id => User.find(:first, :conditions =>{:name => "agathaapp"}).id, :private => false, :readers_id => 2, :writers_id => 2)
Group.create(:group_name => 'Sapientia', :table_name => 'people', :owner_id => User.find(:first, :conditions =>{:name => "agathaapp"}).id, :private => false, :readers_id => 2, :writers_id => 2)
Group.create(:group_name => 'Lampeter Certificate in Theology', :table_name => 'people', :owner_id => User.find(:first, :conditions =>{:name => "agathaapp"}).id, :private => false, :readers_id => 2, :writers_id => 2)
Group.create(:group_name => 'Lampeter Diploma in Theology', :table_name => 'people', :owner_id => User.find(:first, :conditions =>{:name => "agathaapp"}).id, :private => false, :readers_id => 2, :writers_id => 2)
Group.create(:group_name => 'Language Classes', :table_name => 'courses', :owner_id => User.find(:first, :conditions =>{:name => "agathaapp"}).id, :private => false, :readers_id => 2, :writers_id => 2)
Group.create(:group_name => 'Lecturer Confirmed', :table_name => 'lectures', :owner_id => User.find(:first, :conditions =>{:name => "agathaapp"}).id, :private => false, :readers_id => 2, :writers_id => 2)
Group.create(:group_name => 'Tutor Confirmed', :table_name => 'tutorial_schedules', :owner_id => User.find(:first, :conditions =>{:name => "agathaapp"}).id, :private => false, :readers_id => 2, :writers_id => 2)
language_groups = Group.find_by_sql("SELECT * FROM groups WHERE table_name = 'courses' AND group_name='Language Classes'");
confirmed_lecturer_groups = Group.find_by_sql("SELECT * FROM groups WHERE table_name = 'lectures' AND group_name='Lecturer Confirmed'");
confirmed_tutor_groups =Group.find_by_sql("SELECT * FROM groups WHERE table_name = 'tutorial_schedules' AND group_name='Tutor Confirmed'");

if confirmed_lecturer_groups.length >0 then confirmed_lecturer_id = confirmed_lecturer_groups[0].id else  confirmed_lecturer_id  = 0 end;
if confirmed_tutor_groups.length >0 then confirmed_tutor_id = confirmed_tutor_groups[0].id else confirmed_tutor_id = 0 end;
if language_groups.length >0 then language_group_id = language_groups[0].id else language_group_id = 0 end;
languages = [41,42,143,184,191,39,40,147,157,37,38,175,192];
languages.each do |language_id|
  GroupCourse.create(:group_id=>language_group_id, :course_id => language_id);
end
lectures = Lecture.find(:all);
lectures.each do |lecture|
  GroupLecture.create(:group_id=>confirmed_lecturer_id,:lecture_id =>lecture.id)
end
tutorial_schedules = TutorialSchedule.find(:all);
tutorial_schedules.each do |tutorial_schedule1|
  GroupTutorialSchedule.create(:group_id=>confirmed_tutor_id, :tutorial_schedule_id=>tutorial_schedule1.id)
end



    EmailTemplate.create(:template_name => "Enquiry re availability",
      :from_email => "<%= me.email %>",
      :subject => "Availability for teaching for Blackfriars next year?",
      :ruby_header=> %q{<% first_term = term;   second_term_id = term.id + 1 ;  second_term = Term.find(second_term_id); third_term_id = term.id + 2;  third_term = Term.find(third_term_id); first_term_name = TermName.find(first_term.term_name_id).name; first_term_year = first_term.year; second_term_name = TermName.find(second_term.term_name_id).name; second_term_year = second_term.year; third_term_name = TermName.find(third_term.term_name_id).name; third_term_year = third_term.year; confirmed_groups = Group.find_by_sql("SELECT * FROM groups WHERE table_name = 'lectures' AND group_name='Lecturer Confirmed'"); if confirmed_groups.length >0 then confirmed_id = confirmed_groups[0].id else confirmed_id = 0 end; first_term_lectures = Lecture.find_by_sql("SELECT * FROM lectures a0 WHERE a0.term_id = #{term.id} AND a0.person_id = #{person.id} AND (SELECT COUNT(*) FROM group_lectures a1 WHERE a1.group_id=#{confirmed_id} AND a1.lecture_id = a0.id)=0"); second_term_lectures =  Lecture.find_by_sql("SELECT * FROM lectures a0 WHERE a0.term_id = #{term.id+1} AND a0.person_id = #{person.id} AND (SELECT COUNT(*) FROM group_lectures a1 WHERE a1.group_id=#{confirmed_id} AND a1.lecture_id = a0.id)=0"); third_term_lectures =  Lecture.find_by_sql("SELECT * FROM lectures a0 WHERE a0.term_id = #{term.id+2} AND a0.person_id = #{person.id} AND (SELECT COUNT(*) FROM group_lectures a1 WHERE a1.group_id=#{confirmed_id} AND a1.lecture_id = a0.id)=0"); if first_term_lectures.length>0 || second_term_lectures.length>0 || third_term_lectures.length>0 then make_lecture_request = true;  else make_lecture_request = false; end; num_terms = 0; if first_term_lectures.length >0 then num_terms = num_terms+1 end; if second_term_lectures.length  >0 then num_terms = num_terms+1 end; if third_term_lectures.length  >0 then num_terms = num_terms+1 end; terms_str = "(#{term.id},#{second_term_id },#{third_term_id})"; courses = Course.find_by_sql("SELECT * FROM courses a0 WHERE (SELECT COUNT(*) FROM lectures a1 WHERE a1.course_id = a0.id AND a1.person_id = #{person.id} AND a1.term_id IN #{terms_str} AND (SELECT COUNT(*) FROM group_lectures a2 WHERE a2.group_id=#{confirmed_id} AND a2.lecture_id = a1.id)=0)>0"); num_topics = courses.length; num_lectures = first_term_lectures.length + second_term_lectures.length + third_term_lectures.length; %>},
      :body=> %q{Dear <%= person.salutation %>,<br><br>I hope you are well and the academic year has gone smoothly.<br><br>Thank you for your teaching done for Blackfriars this year soon to end.<br><br>I am soon going to have to sort out who teaches what to whom, and when, in the coming academic year. It will assist that process if at this stage I find out what you and our other tutors can offer us, insofar as you can predict your availability. I hope my questions don’t pose too much of a distraction at this time.<br><br>So, could you let me know if there’s a Term in the coming academic year that is specially good, or specially bad, for doing some tutorials for Blackfriars?<br><br>Also, roughly how many tutorials a week you could reasonably do for us?<br><br>Could you remind me which topics you would specially like to teach if students need them, and which others you could teach if necessary?<br><br><% if make_lecture_request %>Could you also let me know if you would be available to give lectures on the following <%="topic".pl(num_topics)%> in the <%="term".pl(num_terms)%> specified, and if there are any constraints on the days and times at which you can give the <%="lecture".pl(num_lectures)%>?<br><br><% if first_term_lectures.length >0 %><% i = 0; ii=first_term_lectures.length-1; %><u><b><%=first_term_name%> Term <%= first_term_year %></b></u>: <%first_term_lectures.each do |lecture| course_name = Course.find(lecture.course_id).name; n=lecture.number_of_lectures;%><%= n %> <%="lecture".pl(n)%> on <%=course_name%><%if i< ii-1%><%=", "%><%elsif i== ii-1%><%=" and "%><%else%><%="."%><%end%><%i=i+1%><%end%><% end %><br><br><% if second_term_lectures.length >0 %><% i = 0; ii=second_term_lectures.length-1; %><u><b><%=second_term_name%> Term <%= second_term_year %></b></u>: <%second_term_lectures.each do |lecture| course_name = Course.find(lecture.course_id).name; n=lecture.number_of_lectures;%><%= n %> <%="lecture".pl(n)%> on <%=course_name%><%if i< ii-1%><%=", "%><%elsif i== ii-1%><%=" and "%><%else%><%="."%><%end%><%i=i+1%><%end%><% end %><br><br><% if third_term_lectures.length >0 %><% i = 0; ii=third_term_lectures.length-1; %><u><b><%=third_term_name%> Term <%= third_term_year %></b></u>: <%third_term_lectures.each do |lecture| course_name = Course.find(lecture.course_id).name; n=lecture.number_of_lectures;%><%= n %> <%="lecture".pl(n)%> on <%=course_name%><%if i< ii-1%><%=", "%><%elsif i== ii-1%><%=" and "%><%else%><%="."%><%end%><%i=i+1%><%end%><% end %><br><br><%end%>With many thanks for your help, and best wishes,<br><br>Richard.<br>(Richard Conrad, O.P., Vice Regent).<i-1%><br><p></p> <p></p></i-1%>},
      :term_dependency=>true,
      :course_dependency=>false,
      :global_warnings=>%q{michaelmas_term_id = TermName.find(:first,:conditions=>{:name =>"Michaelmas"}).id;   if michaelmas_term_id != term.term_name_id   then  warning_str << "WARNING: you haven't selected a Michaelmas term." end},
      :personal_warnings=>"");

    EmailTemplate.create(:template_name => "Next year's planned tuition, for tutors",
      :from_email => "<%= me.email %>",
      :subject => "Next year's teaching for Blackfriars?",
      :ruby_header=> %q{<%  first_term = term;     second_term_id = term.id + 1 ;     second_term = Term.find(second_term_id);     third_term_id = term.id + 2;     third_term = Term.find(third_term_id);     first_term_name = TermName.find(first_term.term_name_id).name;     first_term_year = first_term.year;     second_term_name = TermName.find(second_term.term_name_id).name;     second_term_year = second_term.year;     third_term_name = TermName.find(third_term.term_name_id).name;     third_term_year = third_term.year;       confirmed_groups = Group.find_by_sql("SELECT * FROM groups WHERE table_name = 'lectures' AND group_name='Lecturer Confirmed'");     language_groups = Group.find_by_sql("SELECT * FROM groups WHERE table_name = 'courses' AND group_name='Language Classes'");     if confirmed_groups.length >0 then confirmed_id = confirmed_groups[0].id else confirmed_id = 0 end;     if language_groups.length >0 then language_group_id = language_groups[0].id else language_group_id = 0 end;     first_term_lectures = Lecture.find_by_sql("SELECT *, (SELECT COUNT(*) FROM attendees x1 WHERE x1.lecture_id = a0.id) AS number_of_students_at_lecture FROM lectures a0 WHERE a0.term_id = #{term.id} AND a0.person_id = #{person.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)=0 AND (SELECT COUNT(*) FROM group_lectures a1 WHERE a1.group_id=#{confirmed_id} AND a1.lecture_id = a0.id)>0");     second_term_lectures =  Lecture.find_by_sql("SELECT *, (SELECT COUNT(*) FROM attendees x1 WHERE x1.lecture_id = a0.id) AS number_of_students_at_lecture  FROM lectures a0 WHERE a0.term_id = #{term.id+1} AND a0.person_id = #{person.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)=0 AND (SELECT COUNT(*) FROM group_lectures a1 WHERE a1.group_id=#{confirmed_id} AND a1.lecture_id = a0.id)>0");     third_term_lectures =  Lecture.find_by_sql("SELECT *, (SELECT COUNT(*) FROM attendees x1 WHERE x1.lecture_id = a0.id) AS number_of_students_at_lecture  FROM lectures a0 WHERE a0.term_id = #{term.id+2} AND a0.person_id = #{person.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)=0 AND(SELECT COUNT(*) FROM group_lectures a1 WHERE a1.group_id=#{confirmed_id} AND a1.lecture_id = a0.id)>0");     first_term_language_classes = Lecture.find_by_sql("SELECT *, (SELECT COUNT(*) FROM attendees x1 WHERE x1.lecture_id = a0.id) AS number_of_students_at_lecture  FROM lectures a0 WHERE a0.term_id = #{term.id} AND a0.person_id = #{person.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)>0 AND (SELECT COUNT(*) FROM group_lectures a1 WHERE a1.group_id=#{confirmed_id} AND a1.lecture_id = a0.id)>0");  second_term_language_classes =  Lecture.find_by_sql("SELECT *, (SELECT COUNT(*) FROM attendees x1 WHERE x1.lecture_id = a0.id) AS number_of_students_at_lecture  FROM lectures a0 WHERE a0.term_id = #{term.id+1} AND a0.person_id = #{person.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)>0 AND (SELECT COUNT(*) FROM group_lectures a1 WHERE a1.group_id=#{confirmed_id} AND a1.lecture_id = a0.id)>0");  third_term_language_classes =  Lecture.find_by_sql("SELECT *, (SELECT COUNT(*) FROM attendees x1 WHERE x1.lecture_id = a0.id) AS number_of_students_at_lecture  FROM lectures a0 WHERE a0.term_id = #{term.id+2} AND a0.person_id = #{person.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)>0 AND(SELECT COUNT(*) FROM group_lectures a1 WHERE a1.group_id=#{confirmed_id} AND a1.lecture_id = a0.id)>0");     first_term_tutorial_schedules = TutorialSchedule.find_by_sql("SELECT * FROM tutorial_schedules WHERE term_id = #{first_term.id} AND person_id = #{person.id}");     if first_term_tutorial_schedules.length > 0 then       first_term_tutorial_str = "";       first_term_tutorial_schedules.each do |tutorial_schedule1|         if (first_term_tutorial_str.length >0) then first_term_tutorial_str << ", "; end;         first_term_tutorial_str << tutorial_schedule1.id.to_s;       end;       first_term_tutorials = Tutorial.find_by_sql("SELECT  *, a10.number_of_tutorials AS num_tutorials, a99.first_name || '  ' || a99.second_name  AS student_name,   a83.name  AS course_name FROM tutorials a0 INNER JOIN people a99 ON  a0.person_id = a99.id INNER JOIN ( tutorial_schedules a10 INNER JOIN courses a83 ON  a10.course_id = a83.id ) ON a0.tutorial_schedule_id = a10.id  WHERE  (a0.id != 1  AND (a0.tutorial_schedule_id IN (#{first_term_tutorial_str}) )) ORDER BY  course_name asc, student_name  asc");     else       first_term_tutorials = [];     end;     second_term_language_classes = Lecture.find_by_sql("SELECT *, (SELECT COUNT(*) FROM attendees x1 WHERE x1.lecture_id = a0.id) AS number_of_students_at_lecture  FROM lectures a0 WHERE a0.term_id = #{term.id} AND a0.person_id = #{person.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)>0 AND (SELECT COUNT(*) FROM group_lectures a1 WHERE a1.group_id=#{confirmed_id} AND a1.lecture_id = a0.id)>0");  second_term_language_classes =  Lecture.find_by_sql("SELECT *, (SELECT COUNT(*) FROM attendees x1 WHERE x1.lecture_id = a0.id) AS number_of_students_at_lecture  FROM lectures a0 WHERE a0.term_id = #{term.id+1} AND a0.person_id = #{person.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)>0 AND (SELECT COUNT(*) FROM group_lectures a1 WHERE a1.group_id=#{confirmed_id} AND a1.lecture_id = a0.id)>0");  third_term_language_classes =  Lecture.find_by_sql("SELECT *, (SELECT COUNT(*) FROM attendees x1 WHERE x1.lecture_id = a0.id) AS number_of_students_at_lecture  FROM lectures a0 WHERE a0.term_id = #{term.id+2} AND a0.person_id = #{person.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)>0 AND(SELECT COUNT(*) FROM group_lectures a1 WHERE a1.group_id=#{confirmed_id} AND a1.lecture_id = a0.id)>0");     second_term_tutorial_schedules = TutorialSchedule.find_by_sql("SELECT * FROM tutorial_schedules WHERE term_id = #{second_term.id} AND person_id = #{person.id}");     if second_term_tutorial_schedules.length > 0 then       second_term_tutorial_str = "";       second_term_tutorial_schedules.each do |tutorial_schedule1|         if (second_term_tutorial_str.length >0) then second_term_tutorial_str << ", "; end;         second_term_tutorial_str << tutorial_schedule1.id.to_s;       end;       second_term_tutorials = Tutorial.find_by_sql("SELECT  *, a10.number_of_tutorials AS num_tutorials, a99.first_name || '  ' || a99.second_name  AS student_name,   a83.name  AS course_name FROM tutorials a0 INNER JOIN people a99 ON  a0.person_id = a99.id INNER JOIN ( tutorial_schedules a10 INNER JOIN courses a83 ON  a10.course_id = a83.id ) ON a0.tutorial_schedule_id = a10.id  WHERE  (a0.id != 1  AND (a0.tutorial_schedule_id IN (#{second_term_tutorial_str}) )) ORDER BY  course_name asc, student_name  asc");     else       second_term_tutorials = [];     end;     third_term_language_classes = Lecture.find_by_sql("SELECT *, (SELECT COUNT(*) FROM attendees x1 WHERE x1.lecture_id = a0.id) AS number_of_students_at_lecture  FROM lectures a0 WHERE a0.term_id = #{term.id} AND a0.person_id = #{person.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)>0 AND (SELECT COUNT(*) FROM group_lectures a1 WHERE a1.group_id=#{confirmed_id} AND a1.lecture_id = a0.id)>0");  third_term_language_classes =  Lecture.find_by_sql("SELECT *, (SELECT COUNT(*) FROM attendees x1 WHERE x1.lecture_id = a0.id) AS number_of_students_at_lecture  FROM lectures a0 WHERE a0.term_id = #{term.id+1} AND a0.person_id = #{person.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)>0 AND (SELECT COUNT(*) FROM group_lectures a1 WHERE a1.group_id=#{confirmed_id} AND a1.lecture_id = a0.id)>0");  third_term_language_classes =  Lecture.find_by_sql("SELECT *, (SELECT COUNT(*) FROM attendees x1 WHERE x1.lecture_id = a0.id) AS number_of_students_at_lecture  FROM lectures a0 WHERE a0.term_id = #{term.id+2} AND a0.person_id = #{person.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)>0 AND(SELECT COUNT(*) FROM group_lectures a1 WHERE a1.group_id=#{confirmed_id} AND a1.lecture_id = a0.id)>0");     third_term_tutorial_schedules = TutorialSchedule.find_by_sql("SELECT * FROM tutorial_schedules WHERE term_id = #{third_term.id} AND person_id = #{person.id}");     if third_term_tutorial_schedules.length > 0 then       third_term_tutorial_str = "";       third_term_tutorial_schedules.each do |tutorial_schedule1|         if (third_term_tutorial_str.length >0) then third_term_tutorial_str << ", "; end;         third_term_tutorial_str << tutorial_schedule1.id.to_s;       end;       third_term_tutorials = Tutorial.find_by_sql("SELECT  *, a10.number_of_tutorials AS num_tutorials, a99.first_name || '  ' || a99.second_name  AS student_name,   a83.name  AS course_name FROM tutorials a0 INNER JOIN people a99 ON  a0.person_id = a99.id INNER JOIN ( tutorial_schedules a10 INNER JOIN courses a83 ON  a10.course_id = a83.id ) ON a0.tutorial_schedule_id = a10.id  WHERE  (a0.id != 1  AND (a0.tutorial_schedule_id IN (#{third_term_tutorial_str}) )) ORDER BY  course_name asc, student_name  asc");     else       third_term_tutorials = [];     end;     students = Person.find_by_sql("SELECT  *, a0.first_name || '  ' || a0.second_name  AS student_name FROM people a0  WHERE (a0.id != 1  AND (SELECT COUNT(*) FROM tutorials y1 INNER JOIN tutorial_schedules y2 ON y2.id = y1.tutorial_schedule_id WHERE y1.person_id = a0.id AND y2.person_id = #{person.id} AND  y2.term_id = #{term.id})>0 ) ORDER BY  student_name  asc ");   %>},
      :body=> %q{Dear <%= person.salutation%>,<br><br>I have been working out who should teach what to whom and how at Blackfriars in the course of the coming academic year, and I should like to invite you to undertake the following teaching. If the proposed lecture courses are acceptable, they will stand. The tutorial courses are liable to fine-tuning as the year develops, but should stay substantially the same. I will of course be in touch term-by-term to confirm or fine-tune the arrangements.<br><br><% if (first_term_lectures.length + first_term_language_classes.length + first_term_tutorials.length) >0 %><u><b><%=first_term_name%> Term <%= first_term_year %></b></u>:<% if first_term_lectures.length >0%><br><br><b>Lectures</b>:<% first_term_lectures.each do |lecture| course_name = Course.find(lecture.course_id).name; num_students =lecture.number_of_students_at_lecture.to_i %><br><u><%=course_name%></u>. <%if num_students>0%> I expect roughly <%=num_students%> <%= "student".pl(num_students)%> to attend.&nbsp; <%else%> I currently don't know how many students will attend<%end%><% end %> <% end %><% if first_term_language_classes.length >0%><br><br><b>Language Classes</b>:<% first_term_language_classes.each do |lecture| course_name = Course.find(lecture.course_id).name; num_students = lecture.number_of_students_at_lecture.to_i %><br><u><%=course_name%></u>. <%if num_students>0%> I expect roughly <%=num_students%> <%= "student".pl(num_students)%> to attend.&nbsp; <%else%> I currently don't know how many students will attend<%end%><% end %> <% end %><% if first_term_tutorials.length> 0%><br><br><b>Tutorials</b>:<% first_term_tutorials.each do |tutorial| num_tutorials = tutorial.num_tutorials.to_i; student = tutorial.student_name; course = tutorial.course_name%><br><%=num_tutorials%> <%="tutorial".pl(num_tutorials)%> on <%=course%> for <%=student%> <% end %> <% end %><% end %><br><br><% if (second_term_lectures.length + second_term_language_classes.length + second_term_tutorials.length) >0 %><u><b><%=second_term_name%> Term <%= second_term_year %></b></u>:<% if second_term_lectures.length >0%><br><br><b>Lectures</b>:<% second_term_lectures.each do |lecture| course_name = Course.find(lecture.course_id).name; num_students =lecture.number_of_students_at_lecture.to_i %><br><u><%=course_name%></u>. <%if num_students>0%> I expect roughly <%=num_students%> <%= "student".pl(num_students)%> to attend.&nbsp; <%else%> I currently don't know how many students will attend<%end%><% end %> <% end %><% if second_term_language_classes.length >0%><br><br><b>Language Classes</b>:<% second_term_language_classes.each do |lecture| course_name = Course.find(lecture.course_id).name; num_students = lecture.number_of_students_at_lecture.to_i %><br><u><%=course_name%></u>. <%if num_students>0%> I expect roughly <%=num_students%> <%= "student".pl(num_students)%> to attend.&nbsp; <%else%> I currently don't know how many students will attend<%end%><% end %> <% end %><% if second_term_tutorials.length> 0%><br><br><b>Tutorials</b>:<% second_term_tutorials.each do |tutorial| num_tutorials = tutorial.num_tutorials.to_i; student = tutorial.student_name; course = tutorial.course_name%><br><%=num_tutorials%> <%="tutorial".pl(num_tutorials)%> on <%=course%> for <%=student%> <% end %> <% end %><% end %><br><br><% if (third_term_lectures.length + third_term_language_classes.length + third_term_tutorials.length) >0 %><u><b><%=third_term_name%> Term <%= third_term_year %></b></u>:<% if third_term_lectures.length >0%><br><br><b>Lectures</b>:<% third_term_lectures.each do |lecture| course_name = Course.find(lecture.course_id).name; num_students =lecture.number_of_students_at_lecture.to_i %><br><u><%=course_name%></u>. <%if num_students>0%> I expect roughly <%=num_students%> <%= "student".pl(num_students)%> to attend.&nbsp; <%else%> I currently don't know how many students will attend<%end%><% end %> <% end %><% if third_term_language_classes.length >0%><br><br><b>Language Classes</b>:<% third_term_language_classes.each do |lecture| course_name = Course.find(lecture.course_id).name; num_students = lecture.number_of_students_at_lecture.to_i %><br><u><%=course_name%></u>. <%if num_students>0%> I expect roughly <%=num_students%> <%= "student".pl(num_students)%> to attend.&nbsp; <%else%> I currently don't know how many students will attend<%end%><% end %> <% end %><% if third_term_tutorials.length> 0%><br><br><b>Tutorials</b>:<% third_term_tutorials.each do |tutorial| num_tutorials = tutorial.num_tutorials.to_i; student = tutorial.student_name; course = tutorial.course_name%><br><%=num_tutorials%> <%="tutorial".pl(num_tutorials)%> on <%=course%> for <%=student%> <% end %> <% end %><% end %><br><br><u>Please let me know</u>:<br><br>Can you manage the teaching load?<br><br>Could you reasonably fit anything more in if I needed to find a few more tutors?<br><br>Do you need details of what is prescribed for any of the lecture courses or tutorials? <span style="color: rgb(64, 160, 255);" tag="span" class="yui-tag-span yui-tag">– apart from the module descriptors attached to this email.</span><br><br>Do you need more information about any of the students you will be tutoring, their backgrounds, needs, interests?<br><br><%if students.length > 0 %><u><b>Vacation Reading and students’ contact details for Michaelmas Term:</b></u><br><br>These are the email addresses of your students for Michaelmas Term. It would be good to give them recommendations for vacation reading, if you can. Hopefully they will get in touch with you nearer Term to fix tutorial times and topics.<br><br><%students.each do |student|%><%=student.student_name%>: <%=student.email%><br><%end%><% end %><br>With many thanks, and best wishes,<br>Richard.<br>(Richard Conrad, O.P., Vice Regent).<br>   	 	 	<br>},
      :term_dependency=>true,
      :course_dependency=>false,
      :global_warnings=>"",
      :personal_warnings=>"");

    EmailTemplate.create(:template_name => "Next year's planned tuition, for students",
      :from_email => "<%= me.email %>",
      :subject => "Next year's studies at Blackfriars",
      :ruby_header=> %q{<%  first_term = term;     second_term_id = term.id + 1 ;    second_term = Term.find(second_term_id);    third_term_id = term.id + 2;    third_term = Term.find(third_term_id);    first_term_name = TermName.find(first_term.term_name_id).name;    first_term_year = first_term.year;    second_term_name = TermName.find(second_term.term_name_id).name;    second_term_year = second_term.year;    third_term_name = TermName.find(third_term.term_name_id).name;    third_term_year = third_term.year;        language_groups = Group.find_by_sql("SELECT * FROM groups WHERE table_name = 'courses' AND group_name='Language Classes'");      if language_groups.length >0 then language_group_id = language_groups[0].id; else language_group_id = 0; end;    first_term_examined =  Lecture.find_by_sql("SELECT  a0.id, a30.name  AS course_name FROM lectures a0 INNER JOIN courses a30 ON  a0.course_id = a30.id INNER JOIN attendees y1 ON y1.lecture_id = a0.id  WHERE  (a0.id != 1  AND y1.person_id =#{person.id} AND y1.examined = true AND a0.term_id = #{first_term.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)=0) ORDER BY   course_name  asc ");    first_term_not_examined =  Lecture.find_by_sql("SELECT  a0.id, a30.name  AS course_name FROM lectures a0 INNER JOIN courses a30 ON  a0.course_id = a30.id INNER JOIN attendees y1 ON y1.lecture_id = a0.id  WHERE  (a0.id != 1  AND y1.person_id =#{person.id} AND y1.examined = false AND a0.term_id = #{first_term.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)=0) ORDER BY   course_name  asc ");    first_term_languages = Lecture.find_by_sql("SELECT  a0.id, a30.name AS course_name, x1.first_name || ' ' || x1.second_name AS tutor_name FROM lectures a0 INNER JOIN courses a30 ON  a0.course_id = a30.id INNER JOIN people x1 ON x1.id = a0.person_id INNER JOIN attendees y1 ON y1.lecture_id = a0.id  WHERE  (a0.id != 1  AND y1.person_id =#{person.id} AND a0.term_id = #{first_term.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)>0) ORDER BY  course_name  asc ");    first_term_tutorials = TutorialSchedule.find_by_sql("SELECT  a0.id, a0.number_of_tutorials, a30.name AS course_name, a31.first_name || ' ' || a31.second_name AS tutor_name FROM tutorial_schedules a0 INNER JOIN courses a30 ON a0.course_id = a30.id INNER JOIN people a31 ON a31.id = a0.person_id INNER JOIN tutorials y1 ON y1.tutorial_schedule_id = a0.id  WHERE  (a0.id != 1  AND y1.person_id =#{person.id} AND a0.term_id = #{first_term.id}) ORDER BY  course_name  asc ");    first_term_tutors = Person.find_by_sql("SELECT a0.first_name || ' ' || a0.second_name AS tutor_name, a0.email FROM people a0 WHERE (a0.id != 1 AND (SELECT COUNT(*) FROM tutorials y1 INNER JOIN tutorial_schedules y2 ON y2.id = y1.tutorial_schedule_id WHERE y2.person_id = a0.id AND y1.person_id = #{person.id} AND y2.term_id = #{first_term.id})>0) ORDER BY tutor_name asc  ");    if first_term_languages.length !=0 then     language_ids = "";    first_term_languages.each do|language|      if language_ids.length>0 then language_ids << ", "; end;  language_ids << language.id.to_s;    end;    first_term_language_tutors = Person.find_by_sql("SELECT a0.id, a0.first_name|| ' ' || a0.second_name AS tutor_name, a0.email FROM people a0 WHERE (a0.id != 1 AND (SELECT COUNT(*) FROM attendees y1 INNER JOIN lectures y2 ON y2.id = y1.lecture_id WHERE y2.person_id = a0.id AND y1.person_id = #{person.id} AND y2.term_id = #{first_term.id} AND y2.id IN (#{language_ids}) )>0) ORDER BY tutor_name asc ");  else    first_term_language_tutors = [];  end;second_term_examined =  Lecture.find_by_sql("SELECT  a0.id, a30.name  AS course_name  FROM lectures a0 INNER JOIN courses a30 ON  a0.course_id = a30.id INNER JOIN attendees y1 ON y1.lecture_id = a0.id  WHERE  (a0.id != 1  AND y1.person_id =#{person.id} AND y1.examined = true AND a0.term_id = #{second_term.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)=0) ORDER BY   course_name  asc ");    second_term_not_examined =  Lecture.find_by_sql("SELECT   a0.id, a30.name  AS course_name FROM lectures a0 INNER JOIN courses a30 ON  a0.course_id = a30.id INNER JOIN attendees y1 ON y1.lecture_id = a0.id  WHERE  (a0.id != 1  AND y1.person_id =#{person.id} AND y1.examined = false AND a0.term_id = #{second_term.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)=0) ORDER BY   course_name  asc ");    second_term_languages = Lecture.find_by_sql("SELECT  a0.id, a30.name AS course_name, x1.first_name || ' ' || x1.second_name AS tutor_name FROM lectures a0 INNER JOIN courses a30 ON  a0.course_id = a30.id INNER JOIN people x1 ON x1.id = a0.person_id INNER JOIN attendees y1 ON y1.lecture_id = a0.id  WHERE  (a0.id != 1  AND y1.person_id =#{person.id} AND a0.term_id = #{second_term.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)>0) ORDER BY  course_name  asc ");    second_term_tutorials = TutorialSchedule.find_by_sql("SELECT   a0.id, a0.number_of_tutorials, a30.name AS course_name, a31.first_name || ' ' || a31.second_name AS tutor_name FROM tutorial_schedules a0 INNER JOIN courses a30 ON a0.course_id = a30.id INNER JOIN people a31 ON a31.id = a0.person_id INNER JOIN tutorials y1 ON y1.tutorial_schedule_id = a0.id  WHERE  (a0.id != 1  AND y1.person_id =#{person.id} AND a0.term_id = #{second_term.id}) ORDER BY  course_name  asc ");third_term_examined =  Lecture.find_by_sql("SELECT   a0.id, a30.name  AS course_name FROM lectures a0 INNER JOIN courses a30 ON  a0.course_id = a30.id INNER JOIN attendees y1 ON y1.lecture_id = a0.id  WHERE  (a0.id != 1  AND y1.person_id =#{person.id} AND y1.examined = true AND a0.term_id = #{third_term.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)=0) ORDER BY   course_name  asc ");    third_term_not_examined =  Lecture.find_by_sql("SELECT   a0.id, a30.name  AS course_name FROM lectures a0 INNER JOIN courses a30 ON  a0.course_id = a30.id INNER JOIN attendees y1 ON y1.lecture_id = a0.id  WHERE  (a0.id != 1  AND y1.person_id =#{person.id} AND y1.examined = false AND a0.term_id = #{third_term.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)=0) ORDER BY   course_name  asc ");   third_term_languages = Lecture.find_by_sql("SELECT  a0.id, a30.name AS course_name, x1.first_name || ' ' || x1.second_name AS tutor_name FROM lectures a0 INNER JOIN courses a30 ON  a0.course_id = a30.id INNER JOIN people x1 ON x1.id = a0.person_id INNER JOIN attendees y1 ON y1.lecture_id = a0.id  WHERE  (a0.id != 1  AND y1.person_id =#{person.id} AND a0.term_id = #{third_term.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)>0) ORDER BY  course_name  asc ");    third_term_tutorials = TutorialSchedule.find_by_sql("SELECT  a0.id,a0.number_of_tutorials, a30.name AS course_name, a31.first_name || ' ' || a31.second_name AS tutor_name FROM tutorial_schedules a0 INNER JOIN courses a30 ON a0.course_id = a30.id INNER JOIN people a31 ON a31.id = a0.person_id INNER JOIN tutorials y1 ON y1.tutorial_schedule_id = a0.id  WHERE  (a0.id != 1  AND y1.person_id =#{person.id} AND a0.term_id = #{third_term.id}) ORDER BY  course_name  asc ");%>},
      :body=> %q{Dear <%= person.salutation%>,<br><br>I have been organising the studies for Blackfriars’ students for the coming academic year, and have made the following arrangements for you. If anything seems odd, surprising, alarming, or even wrong, let me know. As with most years, some fine-tuning of the arrangements is only to be expected.<br><br><% if first_term_examined.length + first_term_not_examined.length + first_term_languages.length + first_term_tutorials.length > 0 %><u><b><%=first_term_name%> Term, <%= first_term_year%></b></u>:<br><% if first_term_examined.length>0 %><br><b>Lectures needing an end-of-term examination</b>:<br><% first_term_examined.each do |lecture| %><u><%=lecture.course_name%></u>.<br><% end %><% end%><% if first_term_not_examined.length>0%><br><b>Lectures not needing an end-of-term examination</b>:<br><% first_term_not_examined.each do |lecture| %><u><%= lecture.course_name%></u>.<br><%end%><%end%><% if first_term_languages.length>0%><br><b>Language classes</b>:<br><%first_term_languages.each do |lecture|%><u><%=lecture.course_name%></u> with <%=lecture.tutor_name %>.<br><%end%><%end%><% if first_term_tutorials.length>0 %><br><b>Tutorials</b>:<br><%first_term_tutorials.each do |tutorial| %><%=tutorial.number_of_tutorials%> <%="tutorial".pl(tutorial.number_of_tutorials)%> on <%= tutorial.course_name%> with <%=tutorial.tutor_name%>.<br><% end%><% end %><br><% end %><% if second_term_examined.length + second_term_not_examined.length + second_term_languages.length + second_term_tutorials.length > 0 %><u><b><%=second_term_name%> Term, <%= second_term_year%></b></u>:<br><% if second_term_examined.length>0 %><br><b>Lectures needing an end-of-term examination</b>:<br><% second_term_examined.each do |lecture| %><u><%=lecture.course_name%></u>.<br><% end %><% end%><% if second_term_not_examined.length>0%><br><b>Lectures not needing an end-of-term examination</b>:<br><% second_term_not_examined.each do |lecture| %><u><%= lecture.course_name%></u>.<br><%end%><%end%><% if second_term_languages.length>0%><br><b>Language classes</b>:<br><%second_term_languages.each do |lecture|%><u><%=lecture.course_name%></u> with <%=lecture.tutor_name %>.<br><%end%><%end%><% if second_term_tutorials.length>0 %><br><b>Tutorials</b>:<br><%second_term_tutorials.each do |tutorial| %><%=tutorial.number_of_tutorials%> <%="tutorial".pl(tutorial.number_of_tutorials)%> on <%= tutorial.course_name%> with <%=tutorial.tutor_name%>.<br><% end%><% end %><br><% end %><% if third_term_examined.length + third_term_not_examined.length + third_term_languages.length + third_term_tutorials.length > 0 %><u><b><%=third_term_name%> Term, <%= third_term_year%></b></u>:<br><% if third_term_examined.length>0 %><br><b>Lectures needing an end-of-term examination</b>:<br><% third_term_examined.each do |lecture|%><u><%= lecture.course_name%></u><br><% end %><% end%><% if third_term_not_examined.length>0%><br><b>Lectures not needing an end-of-term examination</b>:<br><% third_term_not_examined.each do |lecture| %><u><%= lecture.course_name%></u>.<br><%end%><%end%><% if third_term_languages.length>0%><br><b>Language classes</b>:<br><%third_term_languages.each do |lecture|%><u><%=lecture.course_name%></u> with <%=lecture.tutor_name %><br><%end%><%end%><% if third_term_tutorials.length>0 %><br><b>Tutorials</b>:<br><%third_term_tutorials.each do |tutorial| %><%=tutorial.number_of_tutorials%> <%="tutorial".pl(tutorial.number_of_tutorials)%> on <%= tutorial.course_name%> with <%=tutorial.tutor_name%>.<br><% end%><% end %><br><% end %><u><b>Syllabuses and Vacation Reading</b></u>:<br>I attach the “descriptors” for the Michaelmas Term courses. These include some bibliography, and it would be good to get ahead with some reading. If you can get more specific advice from your tutors, follow that; otherwise use the descriptors, and browse the library! <% if first_term_tutorials.length + first_term_languages.length>0%><br><br><u><b>Tutors’ contact details for Michaelmas Term</b></u>:<br>These are the email addresses of your tutors for Michaelmas Term, and of the lecturers who will run the language classes you are attending. It would be good to ask the tutors for recommendations for vacation reading, and to get in touch again nearer Term to fix tutorial times and topics. Ask the language-class lecturers what preparations to make for the language classes.<br><br><% if first_term_tutors.length >0 %><b>Tutorial Emails</b>:<br><%first_term_tutors.each do |a_tutor|%><%=a_tutor.tutor_name%>: <%=a_tutor.email%>.<br><%end%><br><% end %><% if first_term_language_tutors.length >0 %><b>Language Class Emails</b>:<br><%first_term_language_tutors.each do |a_tutor|%><%=a_tutor.tutor_name%>: <%=a_tutor.email%>.<br><%end%><%end%><br><%end%>If anything seems unclear, or you need more advice for the vacation, or feel the need to change some of the arrangements, please get in touch.<br>With best wishes,<br>Richard.<br>(Richard Conrad, O.P., Vice Regent).<br><br><br><p></p>},
      :term_dependency=>true,
      :course_dependency=>false,
      :global_warnings=>"",
      :personal_warnings=>"");

      EmailTemplate.create(:template_name => "Confirmation of teaching plans, for tutors",
      :from_email => "<%= me.email %>",
      :subject => "The coming Term’s teaching for Blackfriars",
      :ruby_header=> %q{<%  first_term = term;  first_term_name = TermName.find(first_term.term_name_id).name;  first_term_year = first_term.year;  confirmed_groups = Group.find_by_sql("SELECT * FROM groups WHERE table_name = 'lectures' AND group_name='Lecturer Confirmed'");  language_groups = Group.find_by_sql("SELECT * FROM groups WHERE table_name = 'courses' AND group_name='Language Classes'");  if confirmed_groups.length >0 then confirmed_id = confirmed_groups[0].id else confirmed_id = 0 end;  if language_groups.length >0 then language_group_id = language_groups[0].id else language_group_id = 0 end;  first_term_lectures = Lecture.find_by_sql("SELECT *, (SELECT COUNT(*) FROM attendees x1 WHERE x1.lecture_id = a0.id) AS number_of_students_at_lecture FROM lectures a0 WHERE a0.term_id = #{term.id} AND a0.person_id = #{person.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)=0 AND (SELECT COUNT(*) FROM group_lectures a1 WHERE a1.group_id=#{confirmed_id} AND a1.lecture_id = a0.id)>0");  first_term_language_classes = Lecture.find_by_sql("SELECT *, (SELECT COUNT(*) FROM attendees x1 WHERE x1.lecture_id = a0.id) AS number_of_students_at_lecture  FROM lectures a0 WHERE a0.term_id = #{term.id} AND a0.person_id = #{person.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)>0 AND (SELECT COUNT(*) FROM group_lectures a1 WHERE a1.group_id=#{confirmed_id} AND a1.lecture_id = a0.id)>0");  second_term_language_classes =  Lecture.find_by_sql("SELECT *, (SELECT COUNT(*) FROM attendees x1 WHERE x1.lecture_id = a0.id) AS number_of_students_at_lecture  FROM lectures a0 WHERE a0.term_id = #{term.id+1} AND a0.person_id = #{person.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)>0 AND (SELECT COUNT(*) FROM group_lectures a1 WHERE a1.group_id=#{confirmed_id} AND a1.lecture_id = a0.id)>0");  third_term_language_classes =  Lecture.find_by_sql("SELECT *, (SELECT COUNT(*) FROM attendees x1 WHERE x1.lecture_id = a0.id) AS number_of_students_at_lecture  FROM lectures a0 WHERE a0.term_id = #{term.id+2} AND a0.person_id = #{person.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)>0 AND(SELECT COUNT(*) FROM group_lectures a1 WHERE a1.group_id=#{confirmed_id} AND a1.lecture_id = a0.id)>0");  first_term_tutorial_schedules = TutorialSchedule.find_by_sql("SELECT * FROM tutorial_schedules WHERE term_id = #{first_term.id} AND person_id = #{person.id}");  if first_term_tutorial_schedules.length > 0 then       first_term_tutorial_str = "";       first_term_tutorial_schedules.each do |tutorial_schedule1|      if (first_term_tutorial_str.length >0) then first_term_tutorial_str << ", "; end;         first_term_tutorial_str << tutorial_schedule1.id.to_s;       end;    first_term_tutorials = Tutorial.find_by_sql("SELECT  *, a10.number_of_tutorials AS num_tutorials, a99.first_name || '  ' || a99.second_name  AS student_name,   a83.name  AS course_name FROM tutorials a0 INNER JOIN people a99 ON  a0.person_id = a99.id INNER JOIN ( tutorial_schedules a10 INNER JOIN courses a83 ON  a10.course_id = a83.id ) ON a0.tutorial_schedule_id = a10.id  WHERE  (a0.id != 1  AND (a0.tutorial_schedule_id IN (#{first_term_tutorial_str}) )) ORDER BY  course_name asc, student_name  asc");  else    first_term_tutorials = [];     end;  students = Person.find_by_sql("SELECT  *, a0.first_name || '  ' || a0.second_name  AS student_name FROM people a0  WHERE (a0.id != 1  AND (SELECT COUNT(*) FROM tutorials y1 INNER JOIN tutorial_schedules y2 ON y2.id = y1.tutorial_schedule_id WHERE y1.person_id = a0.id AND y2.person_id = #{person.id} AND  y2.term_id = #{term.id})>0 ) ORDER BY  student_name  asc ");%>},
      :body=> %q{Dear <%= person.salutation%>,<br><br><%if first_term_name == "Michaelmas"%>I hope you had a good summer.<br><br><% end%>Thanks for expressing your willingness to undertake the teaching for Blackfriars that I asked you to undertake.<br><br>This email is to confirm the arrangements <b>for the coming <%=first_term_name%> Term</b>. <span style="color: rgb(128, 192, 255);" tag="span" class="yui-tag-span yui-tag">You will see there has been a bit of fine-tuning to the tutorial courses, but this should not increase your work load</span>. If there are now any problems with the teaching, then of course please be in touch and we can modify the arrangements.<br><br>I attach the lecture list for the term in case you have mislaid the copy sent earlier.<% if (first_term_lectures.length + first_term_language_classes.length + first_term_tutorials.length) >0 %><% if first_term_lectures.length >0%><br><br><b>Lectures</b>:<% first_term_lectures.each do |lecture| course_name = Course.find(lecture.course_id).name; num_students =lecture.number_of_students_at_lecture.to_i %><br><u><%=course_name%></u>. <%if num_students>0%> I expect roughly <%=num_students%> <%= "student".pl(num_students)%> to attend.&nbsp; <%else%> I currently don't know how many students will attend<%end%><% end %> <% end %><% if first_term_language_classes.length >0%><br><br><b>Language Classes</b>:<% first_term_language_classes.each do |lecture| course_name = Course.find(lecture.course_id).name; num_students = lecture.number_of_students_at_lecture.to_i %><br><u><%=course_name%></u>. <%if num_students>0%> I expect roughly <%=num_students%> <%= "student".pl(num_students)%> to attend.&nbsp; <%else%> I currently don't know how many students will attend<%end%><% end %> <% end %><% if first_term_tutorials.length> 0%><br><br><b>Tutorials</b>:<% first_term_tutorials.each do |tutorial| num_tutorials = tutorial.num_tutorials.to_i; student = tutorial.student_name; course = tutorial.course_name%><br><%=num_tutorials%> <%="tutorial".pl(num_tutorials)%> on <%=course%> for <%=student%> <% end %> <% end %><br><br><% end %>Do you need more information about any of the students you will be tutoring, their backgrounds, needs, interests?<br><br><%if students.length > 0%> <%if first_term_name == "Michaelmas" %>In case you still need to chase up any of your tutorial students for the forthcoming Michaelmas Term, here is an up-to-date list of email addresses.<br><br><%students.each do |student|%><%=student.student_name%>: <%=student.email%><br><%end%><br>With many thanks, and best wishes for the new academic year,<% else %><u><b>Vacation Reading and students’ contact details:</b></u><br><br>These are the up-to-date email addresses of your students for next Term. It would be good to give them recommendations for vacation reading, if you can. Hopefully they will get in touch with you nearer Term to fix tutorial times and topics.<br><br><%students.each do |student|%><%=student.student_name%>: <%=student.email%><br><%end%><br>I hope you have a good vacation.<br><br>With many thanks, and best wishes,<% end %><br><%end%><br>Richard.<br><br>(Richard Conrad, O.P., Vice Regent).<br>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <br><br>},
      :term_dependency=>true,
      :course_dependency=>false,
      :global_warnings=>"",
      :personal_warnings=>"");

    EmailTemplate.create(:template_name => "Confirmation of teaching plans, for students",
      :from_email => "<%= me.email %>",
      :subject => "The coming Term’s studies at Blackfriars",
      :ruby_header=> %q{<%     first_term = term;       first_term_name = TermName.find(first_term.term_name_id).name;    first_term_year = first_term.year;       language_groups = Group.find_by_sql("SELECT * FROM groups WHERE table_name = 'courses' AND group_name='Language Classes'");     if language_groups.length >0 then language_group_id = language_groups[0].id; else language_group_id = 0; end;        first_term_examined =  Lecture.find_by_sql("SELECT  a0.id, a30.name  AS course_name FROM lectures a0 INNER JOIN courses a30 ON  a0.course_id = a30.id INNER JOIN attendees y1 ON y1.lecture_id = a0.id  WHERE  (a0.id != 1  AND y1.person_id =#{person.id} AND y1.examined = true AND a0.term_id = #{first_term.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)=0) ORDER BY   course_name  asc ");        first_term_not_examined =  Lecture.find_by_sql("SELECT  a0.id, a30.name  AS course_name FROM lectures a0 INNER JOIN courses a30 ON  a0.course_id = a30.id INNER JOIN attendees y1 ON y1.lecture_id = a0.id  WHERE  (a0.id != 1  AND y1.person_id =#{person.id} AND y1.examined = false AND a0.term_id = #{first_term.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)=0) ORDER BY   course_name  asc ");       first_term_languages = Lecture.find_by_sql("SELECT  a0.id, a30.name AS course_name, x1.first_name || ' ' || x1.second_name AS tutor_name FROM lectures a0 INNER JOIN courses a30 ON  a0.course_id = a30.id INNER JOIN people x1 ON x1.id = a0.person_id INNER JOIN attendees y1 ON y1.lecture_id = a0.id  WHERE  (a0.id != 1  AND y1.person_id =#{person.id} AND a0.term_id = #{first_term.id} AND (SELECT COUNT(*) FROM group_courses a2 WHERE a2.group_id = #{language_group_id} AND a2.course_id = a0.course_id)>0) ORDER BY  course_name  asc ");        first_term_tutorials = TutorialSchedule.find_by_sql("SELECT  a0.id, a0.number_of_tutorials, a30.name AS course_name, a31.first_name || ' ' || a31.second_name AS tutor_name FROM tutorial_schedules a0 INNER JOIN courses a30 ON a0.course_id = a30.id INNER JOIN people a31 ON a31.id = a0.person_id INNER JOIN tutorials y1 ON y1.tutorial_schedule_id = a0.id  WHERE  (a0.id != 1  AND y1.person_id =#{person.id} AND a0.term_id = #{first_term.id}) ORDER BY  course_name  asc ");        first_term_tutors = Person.find_by_sql("SELECT a0.first_name || ' ' || a0.second_name AS tutor_name, a0.email FROM people a0 WHERE (a0.id != 1 AND (SELECT COUNT(*) FROM tutorials y1 INNER JOIN tutorial_schedules y2 ON y2.id = y1.tutorial_schedule_id WHERE y2.person_id = a0.id AND y1.person_id = #{person.id} AND y2.term_id = #{first_term.id})>0) ORDER BY tutor_name asc  ");        if first_term_languages.length !=0 then     language_ids = "";    first_term_languages.each do|language|      if language_ids.length>0 then language_ids << ", "; end;  language_ids << language.id.to_s;    end;          first_term_language_tutors = Person.find_by_sql("SELECT a0.id, a0.first_name|| ' ' || a0.second_name AS tutor_name, a0.email FROM people a0 WHERE (a0.id != 1 AND (SELECT COUNT(*) FROM attendees y1 INNER JOIN lectures y2 ON y2.id = y1.lecture_id WHERE y2.person_id = a0.id AND y1.person_id = #{person.id} AND y2.term_id = #{first_term.id} AND y2.id IN (#{language_ids}) )>0) ORDER BY tutor_name asc ");      else    first_term_language_tutors = [];  end;%>},
      :body=> %q{Dear <%= person.salutation%>,<br><br><%if first_term_name == "Michaelmas"%>I hope you had a good summer.<br><br><% end%>This email is to confirm the arrangements <b>for the coming <%=first_term_name%> Term</b>. If any problems have emerged to do with these studies, then of course please be in touch and we can deal with them.<br><br>I attach the lecture list for the term in case you have mislaid the copy sent earlier.<br><br><% if first_term_examined.length + first_term_not_examined.length + first_term_languages.length + first_term_tutorials.length > 0 %><% if first_term_examined.length>0 %><b>Lectures needing an end-of-term examination</b>:<br><% first_term_examined.each do |lecture| %><u><%=lecture.course_name%></u>.<br><% end %><br><% end%><% if first_term_not_examined.length>0%><b>Lectures not needing an end-of-term examination</b>:<br><% first_term_not_examined.each do |lecture| %><u><%= lecture.course_name%></u>.<br><%end%><%end%><% if first_term_languages.length>0%><br><b>Language classes</b>:<br><%first_term_languages.each do |lecture|%><u><%=lecture.course_name%></u> with <%=lecture.tutor_name %>.<br><%end%><%end%><% if first_term_tutorials.length>0 %><br><b>Tutorials</b>:<br><%first_term_tutorials.each do |tutorial| %><%=tutorial.number_of_tutorials%> <%="tutorial".pl(tutorial.number_of_tutorials)%> on <%= tutorial.course_name%> with <%=tutorial.tutor_name%>.<br><% end%><% end %><br><% end %><% if first_term_name == "Michaelmas" %><u><b>Tutors’ contact details for Michaelmas Term</b></u>:<br>In case you still need to chase up any of your tutors and lecturers for <%if first_term_name == "Michaelmas"%>the forthcoming Michaelmas<%else%> next <%end%> Term, here is an up-to-date list of email addresses. <br><br><% if first_term_tutors.length >0 %><b>Tutorial Emails</b>:<br><%first_term_tutors.each do |a_tutor|%><%=a_tutor.tutor_name%>: <%=a_tutor.email%>.<br><%end%><br><% end %><% if first_term_language_tutors.length >0 %><b>Language Class Emails</b>:<br><%first_term_language_tutors.each do |a_tutor|%><%=a_tutor.tutor_name%>: <%=a_tutor.email%>.<br><%end%><br><%end%>With best wishes for the new academic year,<% else %><u><b>Syllabuses and Vacation Reading</b></u>:<br>I attach the “descriptors” for next Term’s courses. These include some bibliography, and it would be good to get ahead with some reading. If you can get more specific advice from your tutors, follow that; otherwise use the descriptors, and browse the library!<br><br><u><b>Tutors’ contact details for next Term</b></u>:<br>These are the up-to-date email addresses of your tutors for next Term. It would be good to ask them for recommendations for vacation reading, and to get in touch again nearer Term to fix tutorial times and topics.<br><br><% if first_term_tutors.length >0 %><b>Tutorial Emails</b>:<br><%first_term_tutors.each do |a_tutor|%><%=a_tutor.tutor_name%>: <%=a_tutor.email%>.<br><%end%><br><% end %><% if first_term_language_tutors.length >0 %><b>Language Class Emails</b>:<br><%first_term_language_tutors.each do |a_tutor|%><%=a_tutor.tutor_name%>: <%=a_tutor.email%>.<br><% end %><br><%end%> If anything seems unclear, or you need more advice for the vacation, or feel the need to change some of the arrangements, please get in touch.<br><br>I hope you have a good vacation.<br><br>With best wishes,<%end%><br><br>Richard.<br><br>(Richard Conrad, O.P., Vice Regent).<br>},
      :term_dependency=>true,
      :course_dependency=>false,
      :global_warnings=>"",
      :personal_warnings=>"");

    EmailTemplate.create(:template_name =>"Class list and reminder of exam arrangements",
      :from_email => "<%= me.email %>",
      :subject => "Class and exam list for the coming Term at Blackfriars",
      :ruby_header=> %q{<% lecture_schedules = Lecture.find_by_sql("SELECT * FROM lectures WHERE course_id = #{course.id} AND term_id = #{term.id}");     if lecture_schedules.length >0 then       lecture_id = lecture_schedules[0].id;      exam_attendees = Attendee.find_by_sql("SELECT *, a1.first_name || ' ' || a1.second_name AS student_name FROM attendees a0 INNER JOIN people a1 ON a1.id=a0.person_id AND a0.lecture_id = #{lecture_id} AND a0.examined= true ORDER BY student_name");      non_exam_attendees =  Attendee.find_by_sql("SELECT *, a1.first_name || ' ' || a1.second_name AS student_name FROM attendees a0 INNER JOIN people a1 ON a1.id=a0.person_id AND a0.lecture_id = #{lecture_id} AND a0.examined= false ORDER BY student_name");    else      exam_attendees = [];      non_exam_attendees = [];    end;%>},
      :body=> %q{Dear <%= person.salutation %>,<br><br>This email concerns the lecture course on <%=course.name%> for the current Term. <% if (exam_attendees.length + non_exam_attendees.length) >0 %> As I understand it, the following students are supposed to attend the lecture course – there may well be others in the class, for whom it is optional.<br><% if exam_attendees.length >0 %> <br><b>Students needing an end-of-term examination</b>:<br><br>These students need a grade for the course, but are not taking tutorials in the subject. The lecturer normally determines the exam format (often a short viva-voce exam) and scope, and explains this to the students. Exams are usually held on the Monday or Tuesday of 9th Week, at a time to suit the lecturer and the students involved.<br><br><% exam_attendees.each do |attendee|%> <%=attendee.student_name%><br><%end%><br><%end%><% if non_exam_attendees.length >0 %> <b>Students not needing an end-of-term examination</b>:<br><br><% non_exam_attendees.each do |attendee|%> <%=attendee.student_name%><br><%end%><br><%end%><% else%>No one needs to be examined in this course and no one is required to attend.<%end%>If anything seems odd, surprising, alarming, or even wrong with these arrangements, let me know.<br><br>With best wishes,<br><br>Richard.<br><br>(Richard Conrad, O.P., vice-regent)<br><br>},
      :term_dependency=>true,
      :course_dependency=>false,
      :global_warnings=>"",
      :personal_warnings=>"");

        RAILS_DEFAULT_LOGGER.error( "import_csv done display filters" );
    RAILS_DEFAULT_LOGGER.flush

  end
end

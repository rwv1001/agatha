
function copyright()
{
    document.write('<p style="text-align: center; font-size: 32%;"> Agatha database version, 3.0.01 © 2009, Robert Verrill O.P.</p>');

}
function hideHeader()
{
    $('logo_div').hide();
    $('title_div').hide();
    $('black_bar_div').hide();
    $('shrink_button_div').hide();
    $('menu_div').setStyle({
        top: '17px'
    });
    $('content_div').setStyle({
        top: '17px'
    });
        $('content_div_1').setStyle({
        top: '17px'
    });
        $('content_div_2').setStyle({
        top: '17px'
    });

            $('black_bar_separator_div').setStyle({
        top: '17px'
    });
    $('expand_button_div').show();
}
function showHeader()
{
    $('logo_div').show();
    $('title_div').show();
    $('black_bar_div').show();
    $('shrink_button_div').show();
    $('menu_div').setStyle({
        top: '187px'
    });
    $('content_div').setStyle({
        top: '187px'
    });
        $('content_div_1').setStyle({
        top: '187px'
    });
        $('content_div_2').setStyle({
        top: '187px'
    });
            $('black_bar_separator_div').setStyle({
        top: '187px'
    });
       
    $('expand_button_div').hide();
}
function scrollHandler()
{

    //alert('event!');
    //    var scroll_width = $('content_div').scrollWidth;//getStyle('');
    //    var current_width = $('content_div').clientWidth;//getStyle('');
    //    var width_str;
    //    if(current_width < scroll_width)
    //   {
    //        width_str = scroll_width+'px'
    //    }
    //    else
    //   {
    //        width_str = '100%'
    //    }
    two_column_div = $("two_column_div")
    if(two_column_div.visible() )
        {
            set_double_scroll();
        }
    
    $$('.separator_class').each(function(elt){
        content_div = elt.up('.content_div');
        scroll_width = content_div.scrollWidth;
        current_width = content_div.clientWidth;
        if(current_width < scroll_width)
        {
            width_str = scroll_width+'px'
        }
        else
        {
            width_str = '100%'
        }
        elt.setStyle({
            width:width_str
        })
    });
// set_double_scroll();
  
}
function scrollHandler3()
{
 //alert('event!');
  var scroll_width = $('content_div').scrollWidth;//getStyle('');
  var current_width = $('content_div').clientWidth;//getStyle('');
  var width_str;
  if(current_width < scroll_width)
  {
      width_str = 'width: ' +  scroll_width+'px'
  }
  else
  {
      width_str = 'width: ' +  '100%'
  }
 // if
//  var content_str = content_width;


  //$('jum_jo').setStyle({width: width_str});
  //var jum_jo_width = $('jum_jo').getStyle('width');
 //  $('test_resize').replace('<p id ="test_resize"> scroll size is '+ scroll_width+' current = '+current_width +' width_str = ' + width_str+'</p>');

  $$('.separator_class').each(function(elt)
  {
      style_str = elt.getAttribute("style");
      elt.setAttribute('style', width_str);
      style_str2 = elt.getAttribute("style");
      x =1 ;
  });

}
function template_header()
{
    document.write('<div id ="logo_div" style ="position: fixed;left: 0px; top:0px;width:150px;height:154px">');
    document.write('<img src="/images/logo.png" alt="Blackfriars Logo" width="150" height="154" longdesc="http://agatha.bfriars.ox.ac.uk/logo.png"></div>');
    document.write('<div id ="title_div" style ="position: fixed;left: 150px; right:0px; top:0px; height:163px">');
    document.write('<div align="center"> <h1 align="center">Agatha</h1> <h2 align="center">Blackfriars Hall/Studium<br> Studies Database </h2> </div></div>');
    document.write('<div id="shrink_button_div" class="remove_header" style ="position: fixed;top:156px;height:17px;width:10px; right:0px;">');
    document.write('<a href ="#" onclick="hideHeader();return false" >X</a></div>');
    document.write('<div id="black_bar_div" style ="position: fixed;top:173px;height:7px;left:0px; right:0px;background-color: #000000;">&nbsp;</div>');
    document.write('<div id="expand_button_div" class="remove_header" style ="position: fixed;top:0px;height:17px;width:10px; right:0px;">');
    document.write('<a href ="#" onclick="showHeader();return false" >+</a></div>');
    $('expand_button_div').hide();
}
function menu_begin()
{
    
    
   
    document.write('<div id="menu_div" style="position: fixed; top: 187px; left:0px; bottom: 7px; width:150px; ">');



}



function  menu_end()
{
    
    document.write('<div style ="width: 150px; position:  absolute;bottom:0;"><p style="text-align: center; font-size: 25%;"> </p>');
    copyright();
    document.write('</div></div>');
  
    
}

function content_begin()
{
    document.write('<div id="content_div" class="content_div" style="position: fixed;  top: 187px; left: 166px; right:0px; bottom:7px; overflow: auto;">');

}

function content_end()
{
   
    $('content_div').onscroll = scrollHandler;
    window.onresize = scrollHandler;
}

function display_page(page_name, option_str)
{
    
    
    page_name_id = "display_page_name"
    option_id = "display_page_option"
    form_id = "display_page"
    page_name_elt = $(page_name_id)
    option_elt = $(option_id);
    form_elt = $(form_id);
    page_name_elt.setAttribute("value", page_name);
    option_elt.setAttribute("value", option_str);
    form_elt.onsubmit();
}
function hide_div(div_id)
{
    div_elt = $(div_id)
    div_elt.hide();
}
function show_div(div_id)
{
    div_elt = $(div_id)
    div_elt.show();
}
function hide_class(div_id, class_name)
{
    div_elt = $(div_id)
    div_elt.select(class_name).each(function(elt){
        elt.hide();
    });
}
function show_class(div_id, class_name)
{
    div_elt = $(div_id)
    div_elt.select(class_name).each(function(elt){
        elt.show();
    });
}
function insert_div(div_id, insert_id)
{
    div_elt = $(div_id);
    insert_elt = $(insert_id);
    insert_elt.insert({
        'after': div_elt
    });
}
function set_body_id(body_id_str)
{
    $$('body').each(function(body_elt){
        body_elt.setAttribute('id',body_id_str)
        });
}

function set_option(table_name, option_id)
{
    option_id = "action_select_"+table_name +"_"+option_id;
    option_elt = $(option_id)
    if(option_elt != null)
        {
            option_elt.selected = true;
        }

}

  
var all_invisible_classes = [
    ".add_attendee_options",
    ".add-cell",
    ".add_to_group_title",
    ".add_to_lecture_title",
    ".add_to_tutorial_title",
    ".add_to_willing_lecturer_title",
    ".add_to_willing_tutor_title",
    ".assign-cell",
    ".create-cell",
    ".create-email-cell",
    ".create_emails_title",
    ".create_new_entry",
    ".compulsory-cell",
    ".default_class",
    ".delete-cell",
    ".delete_div",
    ".dummy-cell",
    ".email_template_div",
    ".exam-cell",
    ".help-cell",
    ".group_div",
    ".max_tutorials_div",
    ".remove-cell",
    ".remove_from_group_title",
    ".schedule_div",
    ".search_title",
    ".select-cell",
    ".select_options",
    ".send-cell",
    ".send_div",
    ".suggest-cell",
    ".toadd-cell",
    ".tutorial_assign_title",
    ".tutorial_schedule_div",
    ".update-cell",
    ".willing-cell"];

var tmp_invisible_classes = [];

function DisplayDiv(div_id_, insert_id_, visible_ids_, invisible_ids_, visible_classes_, post_javascript_)
{
    this.div_id = div_id_;
    this.insert_id = insert_id_;
    this.visible_ids = visible_ids_;
    this.invisible_ids = invisible_ids_;
    this.visible_classes = visible_classes_;
    
    this.post_javascript = post_javascript_;

    tmp_invisible_classes  = [];

    all_invisible_classes.each(function(inv_class)
    {
        if(visible_classes_.indexOf(inv_class) == -1)
        {
            tmp_invisible_classes.push(inv_class);
        }
    });
    this.invisible_classes = tmp_invisible_classes.clone();
}
var next_option_id = 0;

function PageView(body_id_, page_name_, page_option_str_, unrestricted_, display_divs_)
{
    this.body_id = body_id_;
    this.page_name = page_name_;
    this.page_option_str = page_option_str_;
    this.unrestricted = unrestricted_;
    this.display_divs = display_divs_;
    this.option_id = next_option_id;
    next_option_id = next_option_id+1;
      // initialize the member function references
  // for the class prototype
    if (typeof(_page_view_prototype_called) == 'undefined')
  {
     _page_view_prototype_called = true;
   PageView.prototype.RegisterClasses = RegisterClasses;

  }
  function RegisterClasses(div_ids_, visible_classes_)
  {
    this.display_divs.each(function(display_div)
    {
        div_ids_.each(function(div_id)
        {
            if(display_div.div_id == div_id)
            {
                visible_classes_.each(function(visible_class)
                {
                    if(display_div.visible_classes.indexOf(visible_class) == -1)
                    {
                        display_div.visible_classes.push(visible_class);
                    }
                });
            }
        });
    });
  }


}
var displayPageCl = new Hash();
var option_hash = new Hash();
var sub_menu_hash = new Hash();


function load_pages()
{
    sub_menu_hash.set('Person','Person');
    sub_menu_hash.set('Course','Course');
    sub_menu_hash.set('Lecture','Lecture');
    sub_menu_hash.set('Tutorial','Tutorial');
    sub_menu_hash.set('Email', 'AgathaEmail');
    sub_menu_hash.set('Group','Group');
    sub_menu_hash.set('Option','GroupFiltering');

    next_option_id = 0;
    person_page_views = [];
   

    person_page_views.push(new PageView("people", "Person", "Select action", true,
      [new DisplayDiv("welcome_Person", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"],""),
       new DisplayDiv("Person_action_div", "first_menu_div", [], [], [], "")]));
    person_page_views.push(new PageView("people", "Person", "Edit", true,
      [new DisplayDiv("welcome_Person", "first_div", ["content_div"],["two_column_div"], [".update-cell",".dummy-cell"],""),
       new DisplayDiv("Person_action_div", "first_menu_div", [], [], [],"")]));
    person_page_views.push(new PageView("people", "Person", "Create group", true,
      [new DisplayDiv("welcome_Person", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], ""),
       new DisplayDiv("Person_action_div", "first_menu_div", [], [], [".group_div"], "")]));
    person_page_views.push(new PageView("people", "Person", "Delete people", true,
      [new DisplayDiv("welcome_Person", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell",  ".delete-cell"], ""),
       new DisplayDiv("Person_action_div", "first_menu_div", [], [], [".delete_div"],"")]));
    person_page_views.push(new PageView("people", "Person", "Add to groups", true,
      [new DisplayDiv("welcome_Person", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], "group_unrestriction()"),
       new DisplayDiv("Person_action_div", "first_menu_div", [], [], [], ""),
       new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], "set_double_scroll();group_restriction('people'); set_action_class('Person','Group','add_to_groups')")]));
    person_page_views.push(new PageView("people", "Person", "Remove from groups", true,
      [new DisplayDiv("welcome_Person", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], "group_unrestriction()"),
       new DisplayDiv("Person_action_div", "first_menu_div", [], [], [],""),
       new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".remove_from_group_title"], "set_double_scroll();group_restriction('people'); set_action_class('Person','Group','remove_from_groups')")]));
    person_page_views.push(new PageView("people", "Person", "Set Max Tutorials", true,
      [new DisplayDiv("welcome_Person", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], ""),
       new DisplayDiv("Person_action_div", "first_menu_div", [], [], [".max_tutorials_div"],"")]));
    person_page_views.each(function(page_view)
    {
       page_view.RegisterClasses(["welcome_Person"],[".create_new_entry",".help-cell",".search_title",  ".default_class"]);
       page_view.RegisterClasses(["welcome_Group"],[".select_options", ".select-cell"]);
    });
    displayPageCl.set('Person', person_page_views);
    add_action_items(person_page_views);
    option_hash.set('Person',0);

    next_option_id = 0;
    institution_page_views = [];
    institution_page_views.push(new PageView("people", "Institution", "Select action", true,
      [new DisplayDiv("welcome_Institution", "first_div", ["content_div"],["two_column_div"], [".create_new_entry",".dummy-cell"],""),
       new DisplayDiv("Institution_action_div", "first_menu_div", [], [], [],"")]));
    institution_page_views.push(new PageView("people", "Institution", "Edit", true,
      [new DisplayDiv("welcome_Institution", "first_div", ["content_div"],["two_column_div"], [".create_new_entry",".update-cell",".dummy-cell"], ""),
       new DisplayDiv("Institution_action_div", "first_menu_div", [], [], [], "")]));
    institution_page_views.push(new PageView("people", "Institution", "Create group", true,
      [new DisplayDiv("welcome_Institution", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"],""),
       new DisplayDiv("Institution_action_div", "first_menu_div", [], [], [".group_div"], "")]));
    institution_page_views.push(new PageView("people", "Institution", "Delete institutions", true,
      [new DisplayDiv("welcome_Institution", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell",  ".delete-cell"], ""),
       new DisplayDiv("Institution_action_div", "first_menu_div", [], [], [".delete_div"],"")]));
    institution_page_views.push(new PageView("people", "Institution", "Add to groups", true,
      [new DisplayDiv("welcome_Institution", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], "group_unrestriction()"),
       new DisplayDiv("Institution_action_div", "first_menu_div", [], [], [], ""),
       new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], "set_double_scroll();group_restriction('institutions'); set_action_class('Institution','Group','add_to_groups')")]));
    institution_page_views.push(new PageView("people", "Institution", "Remove from groups", true,
      [new DisplayDiv("welcome_Institution", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], "group_unrestriction()"),
       new DisplayDiv("Institution_action_div", "first_menu_div", [], [], [], ""),
       new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".remove_from_group_title"], "set_double_scroll();group_restriction('institutions'); set_action_class('Institution','Group','remove_from_groups')")]));
    institution_page_views.each(function(page_view)
    {
       page_view.RegisterClasses(["welcome_Institution"],[".create_new_entry",".help-cell",".search_title",  ".default_class"]);
       page_view.RegisterClasses(["welcome_Group"],[".select_options", ".select-cell"]);
    });
    displayPageCl.set('Institution', institution_page_views);
    add_action_items(institution_page_views);
    option_hash.set('Institution',0);


    next_option_id = 0;
    course_page_views = [];
    course_page_views.push(new PageView("courses","Course",  "Select Action",true,
      [new DisplayDiv("welcome_Course", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"], ""),
       new DisplayDiv("Course_action_div", "first_menu_div", [], [], [], "")]));
    course_page_views.push(new PageView("courses", "Course",  "Edit",true,
      [new DisplayDiv("welcome_Course", "first_div", ["content_div"],["two_column_div"], [".update-cell",".dummy-cell"], ""),
       new DisplayDiv("Course_action_div", "first_menu_div", [], [], [],"")]));
    course_page_views.push(new PageView("courses", "Course",  "Create lectures",true,
      [new DisplayDiv("welcome_Course", "first_div", ["content_div"],["two_column_div"], [".create-cell",".suggest-cell",".dummy-cell"], " set_action_class('Course','','create_lecture_from_course');set_suggestion_class('Lecture','Course')"),
       new DisplayDiv("Course_action_div", "first_menu_div", [], [], [".schedule_div"], "")]));
    course_page_views.push(new PageView("courses", "Course",  "Create tutorials",true,
      [new DisplayDiv("welcome_Course", "first_div_1", ["two_column_div"],["content_div"], [".create-cell",".suggest-cell",".dummy-cell"], " set_action_class('Course','Person','create_tutorials_from_course');set_suggestion_class('Tutorial','Course')"),
       new DisplayDiv("Course_action_div", "first_menu_div", [], [], [".tutorial_schedule_div"],""),
       new DisplayDiv("welcome_Person", "first_div_2", [], ["Person_action_div"], [".select_options", ".select-cell",".add_to_tutorial_title"],"set_double_scroll();")]));
    course_page_views.push(new PageView("courses", "Course",  "Add Willing Tutors",true,
      [new DisplayDiv("welcome_Course", "first_div_1", ["two_column_div"],["content_div"], [".select_options", ".select-cell"], " set_action_class('Course','Person','make_willing_tutor')"),
       new DisplayDiv("Course_action_div", "first_menu_div", [], [], [], ""),
       new DisplayDiv("welcome_Person", "first_div_2", [], ["Person_action_div"], [".dummy-cell",".willing-cell",".add_to_willing_tutor_title"], "set_double_scroll();")]));
    course_page_views.push(new PageView("courses", "Course",  "Add Willing Lecturers",true,
      [new DisplayDiv("welcome_Course", "first_div_1", ["two_column_div"],["content_div"], [".select_options", ".select-cell"], " set_action_class('Course','Person','make_willing_lecturer')"),
       new DisplayDiv("Course_action_div", "first_menu_div", [], [], [],""),
       new DisplayDiv("welcome_Person", "first_div_2", [], ["Person_action_div"], [".dummy-cell",".add_to_willing_lecturer_title",".willing-cell"],  "set_double_scroll();")]));
    course_page_views.push(new PageView("courses", "Course",  "Create group",true,
      [new DisplayDiv("welcome_Course", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], ""),
       new DisplayDiv("Course_action_div", "first_menu_div", [], [], [".group_div"],"")]));
    course_page_views.push(new PageView("courses", "Course", "Delete courses",true,
      [new DisplayDiv("welcome_Course", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".delete-cell"],""),
       new DisplayDiv("Course_action_div", "first_menu_div", [], [], [".delete_div"], "")]));
    course_page_views.push(new PageView("courses", "Course", "Add to groups",true,
      [new DisplayDiv("welcome_Course", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], "group_unrestriction()"),
       new DisplayDiv("Course_action_div", "first_menu_div", [], [], [],""),
       new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], "set_double_scroll();group_restriction('courses'); set_action_class('Course','Group','add_to_groups')")]));
    course_page_views.push(new PageView("courses", "Course", "Remove from groups",true,
      [new DisplayDiv("welcome_Course", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], "group_unrestriction()"),
       new DisplayDiv("Course_action_div", "first_menu_div", [], [], [], ""),
       new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [".remove_from_group_title" ], "set_double_scroll();group_restriction('courses'); set_action_class('Course','Group','remove_from_groups')")]));
    course_page_views.each(function(page_view)
    {
       page_view.RegisterClasses(["welcome_Course"],[".create_new_entry",".search_title",  ".default_class"]);
       page_view.RegisterClasses(["welcome_Group"],[".select_options", ".select-cell",".help-cell"]);
       page_view.RegisterClasses(["welcome_Person"],[".help-cell"]);
    });
    displayPageCl.set('Course', course_page_views);
    add_action_items(course_page_views);
    option_hash.set('Course',0);

    next_option_id = 0;
    lecture_page_views = [];
    lecture_page_views.push(new PageView("attendees","Lecture", "Select Action",true,
      [new DisplayDiv("welcome_Lecture", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"], ""),
       new DisplayDiv("Lecture_action_div", "first_menu_div", [], [], [],"")]));
    lecture_page_views.push(new PageView("attendees", "Lecture", "Edit",true,
      [new DisplayDiv("welcome_Lecture", "first_div", ["content_div"],["two_column_div"], [".update-cell",".dummy-cell"], ""),
       new DisplayDiv("Lecture_action_div", "first_menu_div", [], [], [], "")]));
    lecture_page_views.push(new PageView("attendees", "Lecture", "Add attendees",true,
      [new DisplayDiv("welcome_Lecture", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], [".remove-cell",".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
       new DisplayDiv("Lecture_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
       new DisplayDiv("welcome_Person", "first_div_2", [], ["Person_action_div"], [".add_attendee_options",".add_to_lecture_title",".toadd-cell",".select-cell",".exam-cell",".compulsory-cell"], "set_double_scroll();group_restriction('lectures'); set_action_class('Lecture','Person','add_to_lectures')")]));
    lecture_page_views.push(new PageView("attendees", "Lecture",  "Create group",true,
      [new DisplayDiv("welcome_Lecture", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"],""),
       new DisplayDiv("Lecture_action_div", "first_menu_div", [], [], [".group_div"], "")]));
    lecture_page_views.push(new PageView("attendees", "Lecture", "Delete lectures",true,
      [new DisplayDiv("welcome_Lecture", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".delete-cell"], ""),
       new DisplayDiv("Lecture_action_div", "first_menu_div", [], [], [".delete_div"], "")]));
    lecture_page_views.push(new PageView("attendees", "Lecture", "Add to groups",true,
      [new DisplayDiv("welcome_Lecture", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], "group_unrestriction()"),
       new DisplayDiv("Lecture_action_div", "first_menu_div", [], [], [],""),
       new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], "set_double_scroll();group_restriction('lectures'); set_action_class('Lecture','Group','add_to_groups')")]));
    lecture_page_views.push(new PageView("attendees", "Lecture", "Remove from groups",true,
      [new DisplayDiv("welcome_Lecture", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"],"group_unrestriction()"),
       new DisplayDiv("Lecture_action_div", "first_menu_div", [], [], [],""),
       new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".remove_from_group_title"], "set_double_scroll();group_restriction('lectures'); set_action_class('Lecture','Group','remove_from_groups')")]));
    lecture_page_views.each(function(page_view)
    {
       page_view.RegisterClasses(["welcome_Lecture"],[".help-cell",".search_title",  ".default_class"]);
       page_view.RegisterClasses(["welcome_Group"],[".help-cell",".select_options", ".select-cell"]);
    });  
    displayPageCl.set('Lecture', lecture_page_views);
    add_action_items(lecture_page_views);
    option_hash.set('Lecture',0);

    next_option_id = 0;
    willing_lecturer_page_views = [];
    willing_lecturer_page_views.push(new PageView("attendees","WillingLecturer", "Select Action",true,
      [new DisplayDiv("welcome_WillingLecturer", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"], ""),
       new DisplayDiv("WillingLecturer_action_div", "first_menu_div", [], [], [], "")]));
    willing_lecturer_page_views.push(new PageView("attendees", "WillingLecturer", "Edit",true,
      [new DisplayDiv("welcome_WillingLecturer", "first_div", ["content_div"],["two_column_div"], [".update-cell",".dummy-cell"], ""),
       new DisplayDiv("WillingLecturer_action_div", "first_menu_div", [], [], [], "")]));
    willing_lecturer_page_views.push(new PageView("attendees", "WillingLecturer",  "Create group",true,
      [new DisplayDiv("welcome_WillingLecturer", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], ""),
       new DisplayDiv("WillingLecturer_action_div", "first_menu_div", [], [], [".group_div"], "")]));
    willing_lecturer_page_views.push(new PageView("attendees", "WillingLecturer", "Delete willing_lecturers",true,
      [new DisplayDiv("welcome_WillingLecturer", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".delete-cell"], ""),
       new DisplayDiv("WillingLecturer_action_div", "first_menu_div", [], [], [".delete_div"],"")]));
    willing_lecturer_page_views.push(new PageView("attendees", "WillingLecturer", "Add to groups",true,
      [new DisplayDiv("welcome_WillingLecturer", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], "group_unrestriction()"),
       new DisplayDiv("WillingLecturer_action_div", "first_menu_div", [], [], [], ""),
       new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], "set_double_scroll();group_restriction('willing_lecturers'); set_action_class('WillingLecturer','Group','add_to_groups')")]));
    willing_lecturer_page_views.push(new PageView("attendees", "WillingLecturer", "Remove from groups",true,
      [new DisplayDiv("welcome_WillingLecturer", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], "group_unrestriction()"),
       new DisplayDiv("WillingLecturer_action_div", "first_menu_div", [], [], [], ""),
       new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".remove_from_group_title"], "set_double_scroll();group_restriction('willing_lecturers'); set_action_class('WillingLecturer','Group','remove_from_groups')")]));
    willing_lecturer_page_views.each(function(page_view)
    {
       page_view.RegisterClasses(["welcome_WillingLecturer"],[".help-cell",".search_title",  ".default_class"]);
       page_view.RegisterClasses(["welcome_Group"],[".help-cell",".select_options", ".select-cell"]);
    });
    displayPageCl.set('WillingLecturer', willing_lecturer_page_views);
    add_action_items(willing_lecturer_page_views);
    option_hash.set('WillingLecturer',0);

    next_option_id = 0;
    attendee_page_views = [];
    attendee_page_views.push(new PageView("attendees","Attendee", "Select Action",true,
      [new DisplayDiv("welcome_Attendee", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"], ""),
       new DisplayDiv("Attendee_action_div", "first_menu_div", [], [], [], "")]));
    attendee_page_views.push(new PageView("attendees", "Attendee", "Edit",true,
      [new DisplayDiv("welcome_Attendee", "first_div", ["content_div"],["two_column_div"], [".update-cell",".dummy-cell"], ""),
       new DisplayDiv("Attendee_action_div", "first_menu_div", [], [], [], "")]));
    attendee_page_views.push(new PageView("attendees", "Attendee",  "Create group",true,
      [new DisplayDiv("welcome_Attendee", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], ""),
       new DisplayDiv("Attendee_action_div", "first_menu_div", [], [], [".group_div"], "")]));
    attendee_page_views.push(new PageView("attendees", "Attendee", "Delete attendees",true,
      [new DisplayDiv("welcome_Attendee", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".delete-cell"], ""),
       new DisplayDiv("Attendee_action_div", "first_menu_div", [], [], [".delete_div"], "")]));
    attendee_page_views.push(new PageView("attendees", "Attendee", "Add to groups",true,
      [new DisplayDiv("welcome_Attendee", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], "group_unrestriction()"),
       new DisplayDiv("Attendee_action_div", "first_menu_div", [], [], [], ""),
       new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"],"set_double_scroll();group_restriction('attendees'); set_action_class('Attendee','Group','add_to_groups')")]));
    attendee_page_views.push(new PageView("attendees", "Attendee", "Remove from groups",true,
      [new DisplayDiv("welcome_Attendee", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], "group_unrestriction()"),
       new DisplayDiv("Attendee_action_div", "first_menu_div", [], [], [], ""),
       new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".remove_from_group_title"], "set_double_scroll();group_restriction('attendees'); set_action_class('Attendee','Group','remove_from_groups')")]));
    attendee_page_views.each(function(page_view)
    {
       page_view.RegisterClasses(["welcome_Attendee"],[".help-cell",".search_title",  ".default_class"]);
       page_view.RegisterClasses(["welcome_Group"],[".select_options", ".select-cell"]);
    });
    displayPageCl.set('Attendee', attendee_page_views);
    add_action_items(attendee_page_views);
    option_hash.set('Attendee',0);

    next_option_id = 0;
    tutorial_schedule_page_views = [];
    tutorial_schedule_page_views.push(new PageView("tutorials","TutorialSchedule", "Select Action",true,
      [new DisplayDiv("welcome_TutorialSchedule", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"], ""),
       new DisplayDiv("TutorialSchedule_action_div", "first_menu_div", [], [], [],"")]));
    tutorial_schedule_page_views.push(new PageView("tutorials", "TutorialSchedule",  "Edit",true,
      [new DisplayDiv("welcome_TutorialSchedule", "first_div", ["content_div","content_div"],["two_column_div"], [".update-cell",".dummy-cell"], [".select_options", ".select-cell", ".delete-cell"],""),
       new DisplayDiv("TutorialSchedule_action_div", "first_menu_div", [], [], [], "")]));
    tutorial_schedule_page_views.push(new PageView("tutorials", "TutorialSchedule", "Assign tutor",true,
      [new DisplayDiv("welcome_TutorialSchedule", "first_div_1", ["two_column_div"],["content_div"], [".select_options", ".select-cell"], "group_unrestriction()"),
       new DisplayDiv("TutorialSchedule_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
       new DisplayDiv("welcome_Person", "first_div_2", [], ["Person_action_div"], [".assign-cell", ".tutorial_assign_title",".dummy-cell"], "set_double_scroll();set_action_class('TutorialSchedule','Person','assign_tutor')")]));
    tutorial_schedule_page_views.push(new PageView("tutorials", "TutorialSchedule",  "Create group",true,
      [new DisplayDiv("welcome_TutorialSchedule", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], ""),
       new DisplayDiv("TutorialSchedule_action_div", "first_menu_div", [], [], [".group_div"], "")]));
    tutorial_schedule_page_views.push(new PageView("tutorials", "TutorialSchedule","Delete tutorial schedules",true,
      [new DisplayDiv("welcome_TutorialSchedule", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".delete-cell"], ""),
       new DisplayDiv("TutorialSchedule_action_div", "first_menu_div", [], [], [".delete_div"], "")]));
    tutorial_schedule_page_views.push(new PageView("tutorials", "TutorialSchedule", "Add to groups",true,
      [new DisplayDiv("welcome_TutorialSchedule", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"],"group_unrestriction()"),
       new DisplayDiv("TutorialSchedule_action_div", "first_menu_div", [], [], [], [".delete_div",".group_div"],""),
       new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], "set_double_scroll();group_restriction('tutorial_schedules'); set_action_class('TutorialSchedule','Group','add_to_groups')")]));
    tutorial_schedule_page_views.push(new PageView("tutorials", "TutorialSchedule", "Remove from groups",true,
      [new DisplayDiv("welcome_TutorialSchedule", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], "group_unrestriction()"),
       new DisplayDiv("TutorialSchedule_action_div", "first_menu_div", [], [], [], ""),
       new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".remove_from_group_title"], "set_double_scroll();group_restriction('tutorial_schedules'); set_action_class('TutorialSchedule','Group','remove_from_groups')")]));
    tutorial_schedule_page_views.each(function(page_view)
    {
       page_view.RegisterClasses(["welcome_TutorialSchedule"],[".help-cell",".search_title",  ".default_class"]);
       page_view.RegisterClasses(["welcome_Group"],[".select_options", ".select-cell"]) ;
    }); 
    displayPageCl.set('TutorialSchedule', tutorial_schedule_page_views);
    add_action_items(tutorial_schedule_page_views);
    option_hash.set('TutorialSchedule',0);

    next_option_id = 0;
    tutorial_page_views = [];
    tutorial_page_views.push(new PageView("tutorials","Tutorial", "Select Action",true,
      [new DisplayDiv("welcome_Tutorial", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"], ""),
       new DisplayDiv("Tutorial_action_div", "first_menu_div", [], [], [], "")]));
    tutorial_page_views.push(new PageView("tutorials", "Tutorial",  "Edit",true,
      [new DisplayDiv("welcome_Tutorial", "first_div", ["content_div","content_div"],["two_column_div"], [".update-cell",".dummy-cell"], ""),
       new DisplayDiv("Tutorial_action_div", "first_menu_div", [], [], [], "")]));
    tutorial_page_views.push(new PageView("tutorials", "Tutorial",  "Create group",true,
      [new DisplayDiv("welcome_Tutorial", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], ""),
       new DisplayDiv("Tutorial_action_div", "first_menu_div", [], [], [".group_div"], "")]));
    tutorial_page_views.push(new PageView("tutorials", "Tutorial","Delete tutorials",true,
      [new DisplayDiv("welcome_Tutorial", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".delete-cell"], ""),
       new DisplayDiv("Tutorial_action_div", "first_menu_div", [], [], [".delete_div"], "")]));
    tutorial_page_views.push(new PageView("tutorials", "Tutorial", "Add to groups",true,
      [new DisplayDiv("welcome_Tutorial", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"],"group_unrestriction()"),
       new DisplayDiv("Tutorial_action_div", "first_menu_div", [], [], [], ""),
       new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"],"set_double_scroll();group_restriction('tutorials'); set_action_class('Tutorial','Group','add_to_groups')")]));
    tutorial_page_views.push(new PageView("tutorials", "Tutorial", "Remove from groups",true,
      [new DisplayDiv("welcome_Tutorial", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], "group_unrestriction()"),
       new DisplayDiv("Tutorial_action_div", "first_menu_div", [], [], [], ""),
       new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".remove_from_group_title"], "set_double_scroll();group_restriction('tutorials'); set_action_class('Tutorial','Group','remove_from_groups')")]));
    tutorial_page_views.each(function(page_view)
    {
       page_view.RegisterClasses(["welcome_Tutorial"],[".help-cell",".search_title",  ".default_class"]);
       page_view.RegisterClasses(["welcome_Group"],[".select_options", ".select-cell"]);
    });
    displayPageCl.set('Tutorial', tutorial_page_views);
    add_action_items(tutorial_page_views);
    option_hash.set('Tutorial',0);

    next_option_id = 0;
    willing_tutor_page_views = [];
    willing_tutor_page_views.push(new PageView("tutorials","WillingTutor", "Select Action",true,
      [new DisplayDiv("welcome_WillingTutor", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"],""),
       new DisplayDiv("WillingTutor_action_div", "first_menu_div", [], [], [], "")]));
    willing_tutor_page_views.push(new PageView("tutorials", "WillingTutor", "Edit",true,
      [new DisplayDiv("welcome_WillingTutor", "first_div", ["content_div"],["two_column_div"], [".update-cell",".dummy-cell"], ""),
       new DisplayDiv("WillingTutor_action_div", "first_menu_div", [], [], [], "")]));
    willing_tutor_page_views.push(new PageView("tutorials", "WillingTutor",  "Create group",true,
      [new DisplayDiv("welcome_WillingTutor", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], ""),
       new DisplayDiv("WillingTutor_action_div", "first_menu_div", [], [], [".group_div"], "")]));
    willing_tutor_page_views.push(new PageView("tutorials", "WillingTutor", "Delete willing_tutors",true,
      [new DisplayDiv("welcome_WillingTutor", "first_div", ["content_div"],["two_column_div"],[".select_options", ".select-cell", ".delete-cell"],""),
       new DisplayDiv("WillingTutor_action_div", "first_menu_div", [], [], [".delete_div"], "")]));
    willing_tutor_page_views.push(new PageView("tutorials", "WillingTutor", "Add to groups",true,
      [new DisplayDiv("welcome_WillingTutor", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], "group_unrestriction()"),
       new DisplayDiv("WillingTutor_action_div", "first_menu_div", [], [], [],""),
       new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"],"set_double_scroll();group_restriction('willing_tutors'); set_action_class('WillingTutor','Group','add_to_groups')")]));
    willing_tutor_page_views.push(new PageView("tutorials", "WillingTutor", "Remove from groups",true,
      [new DisplayDiv("welcome_WillingTutor", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], [".update-cell",".select_options", ".select-cell", ".delete-cell"],"group_unrestriction()"),
       new DisplayDiv("WillingTutor_action_div", "first_menu_div", [], [], [], ""),
       new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".remove_from_group_title"], "set_double_scroll();group_restriction('willing_tutors'); set_action_class('WillingTutor','Group','remove_from_groups')")]));
    willing_tutor_page_views.each(function(page_view)
    {
       page_view.RegisterClasses(["welcome_WillingTutor"],[".help-cell",".search_title",  ".default_class"]);
       page_view.RegisterClasses(["welcome_Group","welcome_Person"],[".select_options", ".select-cell"]);
    }); 
    displayPageCl.set('WillingTutor', willing_tutor_page_views);
    add_action_items(willing_tutor_page_views);
    option_hash.set('WillingTutor',0);

    next_option_id = 0;
    maximum_tutorial_page_views = [];
    maximum_tutorial_page_views.push(new PageView("tutorials","MaximumTutorial", "Select Action",true,
      [new DisplayDiv("welcome_MaximumTutorial", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"], ""),
       new DisplayDiv("MaximumTutorial_action_div", "first_menu_div", [], [], [], "")]));
    maximum_tutorial_page_views.push(new PageView("tutorials", "MaximumTutorial", "Edit",true,
      [new DisplayDiv("welcome_MaximumTutorial", "first_div", ["content_div"],["two_column_div"], [".update-cell",".dummy-cell"],""),
       new DisplayDiv("MaximumTutorial_action_div", "first_menu_div", [], [], [], "")]));    
    maximum_tutorial_page_views.push(new PageView("tutorials", "MaximumTutorial", "Delete max tutorials",true,
      [new DisplayDiv("welcome_MaximumTutorial", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".delete-cell"], ""),
       new DisplayDiv("MaximumTutorial_action_div", "first_menu_div", [], [], [".delete_div"],"")]));

    maximum_tutorial_page_views.each(function(page_view)
    {
       page_view.RegisterClasses(["welcome_MaximumTutorial"],[".help-cell",".search_title",  ".default_class"]);
       
    });
    displayPageCl.set('MaximumTutorial', maximum_tutorial_page_views);
    add_action_items(maximum_tutorial_page_views);
    option_hash.set('MaximumTutorial',0);

    next_option_id = 0;
    group_page_views = [];
    group_page_views.push(new PageView("groups","Group",  "Select Action",true,
      [new DisplayDiv("welcome_Group", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"],"group_unrestriction()"),
       new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], "")]));
    group_page_views.push(new PageView("groups", "Group", "Edit",true,
      [new DisplayDiv("welcome_Group", "first_div", ["content_div"],["two_column_div"], [".update-cell",".dummy-cell"],"group_unrestriction()"),
       new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], "")]));
    group_page_views.push(new PageView("groups", "Group",  "Delete groups",true,
      [new DisplayDiv("welcome_Group", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".delete-cell"],  "group_unrestriction()"),
       new DisplayDiv("Group_action_div", "first_menu_div", [], [ ], [".delete_div"], "")]));
    group_page_views.push(new PageView("groups", "Group", "Add people",true,
      [new DisplayDiv("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], "group_unrestriction()"),
       new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], ""),
       new DisplayDiv("welcome_Person", "first_div_2", [], ["Person_action_div"], [ ".add_to_group_title"], "set_double_scroll();group_restriction('people');set_action_class('Group','Person','add_to_group')")]));
    group_page_views.push(new PageView("groups", "Group", "Add institutions",true,
      [new DisplayDiv("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], "group_unrestriction()"),
       new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], ""),
       new DisplayDiv("welcome_Institution", "first_div_2", [], ["Institution_action_div"], [ ".add_to_group_title"],"set_double_scroll();group_restriction('institutions');set_action_class('Group','Institution','add_to_group')")]));
    group_page_views.push(new PageView("groups", "Group", "Add courses",true,
      [new DisplayDiv("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], "group_unrestriction()"),
       new DisplayDiv("Group_action_div", "first_menu_div", [], [], [],""),
       new DisplayDiv("welcome_Course", "first_div_2", [], ["Course_action_div"], [".add_to_group_title"], "set_double_scroll();group_restriction('courses');set_action_class('Group','Course','add_to_group')")]));
    group_page_views.push(new PageView("groups", "Group", "Add lectures",true,
      [new DisplayDiv("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], "group_unrestriction()"),
       new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], ""),
       new DisplayDiv("welcome_Lecture", "first_div_2", [], ["Lecture_action_div"], [ ".add_to_group_title"],"set_double_scroll();group_restriction('lectures');set_action_class('Group','Lecture','add_to_group')")]));
    group_page_views.push(new PageView("groups", "Group", "Add attendees",true,
      [new DisplayDiv("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], "group_unrestriction()"),
       new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], ""),
       new DisplayDiv("welcome_Attendee", "first_div_2", [], ["Attendee_action_div"], [ ".add_to_group_title"],"set_double_scroll();group_restriction('attendees');set_action_class('Group','Attendee','add_to_group')")]));
    group_page_views.push(new PageView("groups", "Group", "Add tutorials",true,
      [new DisplayDiv("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], "group_unrestriction()"),
       new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], ""),
       new DisplayDiv("welcome_Tutorial", "first_div_2", [], ["Tutorial_action_div"], [".add_to_group_title"],"set_double_scroll();group_restriction('tutorials');set_action_class('Group','Tutorial','add_to_group')")]));
  group_page_views.push(new PageView("groups", "Group", "Add tutorial schedules",true,
    [ new DisplayDiv("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], "group_unrestriction()"),
      new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], ""),
      new DisplayDiv("welcome_TutorialSchedule", "first_div_2", [], ["TutorialSchedule_action_div"], [".add_to_group_title"],"set_double_scroll();group_restriction('tutorial_schedules');set_action_class('Group','TutorialSchedule','add_to_group')")]));
 group_page_views.push(new PageView("groups", "Group","Add email templates",true,
    [ new DisplayDiv("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], "group_unrestriction()"),
      new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], ""),
      new DisplayDiv("welcome_EmailTemplate", "first_div_2", [], ["EmailTemplate_action_div"], [".add_to_group_title"],"set_double_scroll();group_restriction('email_templates');set_action_class('Group','EmailTemplate','add_to_group')")]));
 group_page_views.push(new PageView("groups", "Group","Add willing lecturers",true,
    [ new DisplayDiv("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], "group_unrestriction()"),
      new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], ""),
      new DisplayDiv("welcome_WillingLecturer", "first_div_2", [], ["WillingLecturer_action_div"], [".add_to_group_title"],"set_double_scroll();group_restriction('willing_lecturers');set_action_class('Group','WillingLecturer','add_to_group')")]));
 group_page_views.push(new PageView("groups", "Group","Add willing tutors",true,
    [ new DisplayDiv("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], "group_unrestriction()"),
      new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], ""),
      new DisplayDiv("welcome_WillingTutor", "first_div_2", [], ["WillingTutor_action_div"], [".add_to_group_title"],"set_double_scroll();group_restriction('willing_tutors');set_action_class('Group','WillingTutor','add_to_group')")]));
  group_page_views.push(new PageView("groups", "Group","Add users",false,
    [ new DisplayDiv("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], "group_unrestriction()"),
      new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], ""),
      new DisplayDiv("welcome_User", "first_div_2", [], ["User_action_div"], [ ".add_to_group_title"],"set_double_scroll();group_restriction('users');set_action_class('Group','User','add_to_group')")]));
  group_page_views.push(new PageView("groups", "Group","Remove people",true,
    [ new DisplayDiv("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], "group_unrestriction()"),
      new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], ""),
      new DisplayDiv("welcome_Person", "first_div_2", [], ["Person_action_div"], [".remove_from_group_title"], "set_double_scroll();group_restriction('people');set_action_class('Group','Person','remove_from_group')")]));
  group_page_views.push(new PageView("groups", "Group", "Remove institutions",true,
    [ new DisplayDiv("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], "group_unrestriction()"),
      new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], ""),
      new DisplayDiv("welcome_Institution", "first_div_2", [], ["Institution_action_div"], [".remove_from_group_title"], "set_double_scroll();group_restriction('institutions');set_action_class('Group','Institution','remove_from_group')")]));
  group_page_views.push(new PageView("groups", "Group", "Remove courses",true,
    [ new DisplayDiv("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], "group_unrestriction()"),
      new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], ""),
      new DisplayDiv("welcome_Course", "first_div_2", [], ["Course_action_div"], [".remove_from_group_title"], "set_double_scroll();group_restriction('courses');set_action_class('Group','Course','remove_from_group')")]));
  group_page_views.push(new PageView("groups", "Group", "Remove lectures",true,
    [ new DisplayDiv("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], "group_unrestriction()"),
      new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], ""),
      new DisplayDiv("welcome_Lecture", "first_div_2", [], ["Lecture_action_div"], [".remove_from_group_title"], "set_double_scroll();group_restriction('lectures');set_action_class('Group','Lecture','remove_from_group')")]));
 group_page_views.push(new PageView("groups", "Group", "Remove attendees",true,
    [ new DisplayDiv("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"],"group_unrestriction()"),
      new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], ""),
      new DisplayDiv("welcome_Attendee", "first_div_2", [], ["Attendee_action_div"], [".remove_from_group_title"], "set_double_scroll();group_restriction('attendees');set_action_class('Group','Attendee','remove_from_group')")]));
  group_page_views.push(new PageView("groups", "Group","Remove tutorials",true,
    [ new DisplayDiv("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"],"group_unrestriction()"),
      new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], ""),
      new DisplayDiv("welcome_Tutorial", "first_div_2", [], ["Tutorial_action_div"], [".remove_from_group_title"], "set_double_scroll();group_restriction('tutorials');set_action_class('Group','Tutorial','remove_from_group')")]));
 group_page_views.push(new PageView("groups", "Group","Remove tutorial schedule",true,
    [ new DisplayDiv("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], "group_unrestriction()"),
      new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], ""),
      new DisplayDiv("welcome_TutorialSchedule", "first_div_2", [], ["TutorialSchedule_action_div"], [".remove_from_group_title"],"set_double_scroll();group_restriction('tutorial_schedules');set_action_class('Group','TutorialSchedule','remove_from_group')")]));
 group_page_views.push(new PageView("groups", "Group","Remove agatha emails",true,
    [ new DisplayDiv("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], "group_unrestriction()"),
      new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], ""),
      new DisplayDiv("welcome_AgathaEmail", "first_div_2", [], ["AgathaEmail_action_div"], [".remove_from_group_title"],"set_double_scroll();group_restriction('agatha_emails');set_action_class('Group','AgathaEmail','remove_from_group')")]));
 group_page_views.push(new PageView("groups", "Group","Remove email templates",true,
    [ new DisplayDiv("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], "group_unrestriction()"),
      new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], ""),
      new DisplayDiv("welcome_EmailTemplate", "first_div_2", [], ["EmailTemplate_action_div"], [".remove_from_group_title"],"set_double_scroll();group_restriction('email_templates');set_action_class('Group','EmailTemplate','remove_from_group')")]));
 group_page_views.push(new PageView("groups", "Group","Remove willing lecturers",true,
    [ new DisplayDiv("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], "group_unrestriction()"),
      new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], ""),
      new DisplayDiv("welcome_WillingLecturer", "first_div_2", [], ["WillingLecturer_action_div"], [".remove_from_group_title"],"set_double_scroll();group_restriction('willing_lecturers');set_action_class('Group','WillingLecturer','remove_from_group')")]));
 group_page_views.push(new PageView("groups", "Group","Remove willing tutors",true,
    [ new DisplayDiv("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], "group_unrestriction()"),
      new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], ""),
      new DisplayDiv("welcome_WillingTutor", "first_div_2", [], ["WillingTutor_action_div"], [".remove_from_group_title"],"set_double_scroll();group_restriction('willing_tutors');set_action_class('Group','WillingTutor','remove_from_group')")]));

group_page_views.push(new PageView("groups", "Group", "Remove users",false,
    [ new DisplayDiv("welcome_Group", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"],"group_unrestriction()"),
      new DisplayDiv("Group_action_div", "first_menu_div", [], [], [], ""),
      new DisplayDiv("welcome_User", "first_div_2", [], ["User_action_div"], [".remove_from_group_title"],"set_double_scroll();group_restriction('users');set_action_class('Group','User','remove_from_group')")]));
    group_page_views.each(function(page_view)
    {
       page_view.RegisterClasses([ "welcome_Group"],[".help-cell",".search_title",  ".default_class"]);
       page_view.RegisterClasses(["welcome_Person", "welcome_Institution", "welcome_Course", "welcome_Lecture","welcome_Attendee",  "welcome_Tutorial","welcome_TutorialSchedule", "welcome_Attendee","welcome_AgathaEmail","welcome_EmailTemplate","welcome_WillingLecturer","welcome_WillingTutor","welcome_User"],[".select_options", ".select-cell"]);
    });
    displayPageCl.set('Group', group_page_views);
    add_action_items(group_page_views);
    option_hash.set('Group',0);

    next_option_id = 0;
    user_page_views = [];
   user_page_views.push(new PageView("people","User",  "Select Action",false,
     [ new DisplayDiv("welcome_User", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"], ""),
      new DisplayDiv("User_action_div", "first_menu_div", [], [], [], "")]));
  user_page_views.push(new PageView("people", "User", "Create group",false,
    [ new DisplayDiv("welcome_User", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"],""),
      new DisplayDiv("User_action_div", "first_menu_div", [], [], [".group_div"], "")]));
  user_page_views.push(new PageView("people", "User", "Delete users",false,
    [ new DisplayDiv("welcome_User", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".delete-cell"], ""),
      new DisplayDiv("User_action_div", "first_menu_div", [], [], [".delete_div"], "")]));
  user_page_views.push(new PageView("people", "User", "Add to groups",true,
    [ new DisplayDiv("welcome_User", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], "group_unrestriction()"),
      new DisplayDiv("User_action_div", "first_menu_div", [], [], [],""),
      new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], "set_double_scroll();group_restriction('users'); set_action_class('User','Group','add_to_groups')")]));
  user_page_views.push(new PageView("people", "User", "Remove from groups",true,
    [ new DisplayDiv("welcome_User", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], "group_unrestriction()"),
      new DisplayDiv("User_action_div", "first_menu_div", [], [], [], ""),
      new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".remove_from_group_title"],"set_double_scroll();group_restriction('users'); set_action_class('User','Group','remove_from_groups')")]));
    user_page_views.each(function(page_view)
    {
       page_view.RegisterClasses(["welcome_User"],[".help-cell",".search_title",  ".default_class"]);
       page_view.RegisterClasses(["welcome_Group"],[".select_options", ".select-cell"]);
    });
    displayPageCl.set('User', user_page_views);
    add_action_items(user_page_views);
    option_hash.set('User',0);

    next_option_id = 0;
    email_template_page_views = [];
  email_template_page_views.push(new PageView("agatha_emails","EmailTemplate", "Select Action",true,
     [ new DisplayDiv("welcome_EmailTemplate", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"], ""),
      new DisplayDiv("EmailTemplate_action_div", "first_menu_div", [], [], [], "")]));
    email_template_page_views.push(new PageView("agatha_emails", "EmailTemplate",  "Create emails",true,
    [ new DisplayDiv("welcome_EmailTemplate", "first_div_1", ["two_column_div"],["content_div"], [".create-email-cell",".dummy-cell"], " set_action_class('EmailTemplate','Person','create_email_from_template')"),
      new DisplayDiv("EmailTemplate_action_div", "first_menu_div", [], [], [".email_template_div"], ""),
      new DisplayDiv("welcome_Person", "first_div_2", [], ["Person_action_div"], [".create_emails_title"], "set_double_scroll();")]));
  email_template_page_views.push(new PageView("agatha_emails", "EmailTemplate", "Edit",true,
    [ new DisplayDiv("welcome_EmailTemplate", "first_div", ["content_div"],["two_column_div"], [".update-cell",".dummy-cell"], ""),
      new DisplayDiv("EmailTemplate_action_div", "first_menu_div", [], [], [], "")]));
  email_template_page_views.push(new PageView("agatha_emails", "EmailTemplate",  "Create group",true,
    [ new DisplayDiv("welcome_EmailTemplate", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], ""),
      new DisplayDiv("EmailTemplate_action_div", "first_menu_div", [], [], [".group_div"], "")]));
  email_template_page_views.push(new PageView("agatha_emails", "EmailTemplate", "Delete email_templates",true,
    [ new DisplayDiv("welcome_EmailTemplate", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".delete-cell"], ""),
      new DisplayDiv("EmailTemplate_action_div", "first_menu_div", [], [], [".delete_div"], "")]));
  email_template_page_views.push(new PageView("agatha_emails", "EmailTemplate", "Add to groups",true,
    [ new DisplayDiv("welcome_EmailTemplate", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], "group_unrestriction()"),
      new DisplayDiv("EmailTemplate_action_div", "first_menu_div", [], [], [], ""),
      new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], "set_double_scroll();group_restriction('email_templates'); set_action_class('EmailTemplate','Group','add_to_groups')")]));
  email_template_page_views.push(new PageView("agatha_emails", "EmailTemplate", "Remove from groups",true,
    [ new DisplayDiv("welcome_EmailTemplate", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], "group_unrestriction()"),
      new DisplayDiv("EmailTemplate_action_div", "first_menu_div", [], [], [],""),
      new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".remove_from_group_title"], "set_double_scroll();group_restriction('email_templates'); set_action_class('EmailTemplate','Group','remove_from_groups')")]));
    email_template_page_views.each(function(page_view)
    {
       page_view.RegisterClasses(["welcome_EmailTemplate"],[".create_new_entry",".help-cell",".search_title",  ".default_class"]);
       page_view.RegisterClasses(["welcome_Group","welcome_Person"],[".select_options", ".select-cell"]);
    });
    displayPageCl.set('EmailTemplate', email_template_page_views);
    add_action_items(email_template_page_views);
    option_hash.set('EmailTemplate',0);

    next_option_id = 0;
    agatha_email_page_views = [];
      agatha_email_page_views.push(new PageView("agatha_emails","AgathaEmail", "Select Action",true,
     [ new DisplayDiv("welcome_AgathaEmail", "first_div", ["content_div"],["two_column_div"], [".dummy-cell"],""),
      new DisplayDiv("AgathaEmail_action_div", "first_menu_div", [], [], [],"")]));
 agatha_email_page_views.push(new PageView("agatha_emails", "AgathaEmail", "Send agatha_emails",true,
    [ new DisplayDiv("welcome_AgathaEmail", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".send-cell"], ""),
      new DisplayDiv("AgathaEmail_action_div", "first_menu_div", [], [], [".send_div"], "")]));

  agatha_email_page_views.push(new PageView("agatha_emails", "AgathaEmail", "Edit",true,
    [ new DisplayDiv("welcome_AgathaEmail", "first_div", ["content_div"],["two_column_div"], [".update-cell",".dummy-cell"], ""),
      new DisplayDiv("AgathaEmail_action_div", "first_menu_div", [], [], [], "")]));
  agatha_email_page_views.push(new PageView("agatha_emails", "AgathaEmail",  "Create group",true,
    [ new DisplayDiv("welcome_AgathaEmail", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell"], ""),
      new DisplayDiv("AgathaEmail_action_div", "first_menu_div", [], [], [".group_div"], "")]));
  agatha_email_page_views.push(new PageView("agatha_emails", "AgathaEmail", "Delete agatha_emails",true,
    [ new DisplayDiv("welcome_AgathaEmail", "first_div", ["content_div"],["two_column_div"], [".select_options", ".select-cell", ".delete-cell"], ""),
      new DisplayDiv("AgathaEmail_action_div", "first_menu_div", [], [], [".delete_div"],"")]));
  agatha_email_page_views.push(new PageView("agatha_emails", "AgathaEmail", "Add to groups",true,
    [ new DisplayDiv("welcome_AgathaEmail", "first_div_1", ["two_column_div"],["content_div"], [".add-cell",".dummy-cell"], "group_unrestriction()"),
      new DisplayDiv("AgathaEmail_action_div", "first_menu_div", [], [], [], [".send_div",".delete_div",".group_div"],""),
      new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".add_to_group_title"], "set_double_scroll();group_restriction('agatha_emails'); set_action_class('AgathaEmail','Group','add_to_groups')")]));
  agatha_email_page_views.push(new PageView("agatha_emails", "AgathaEmail", "Remove from groups",true,
    [ new DisplayDiv("welcome_AgathaEmail", "first_div_1", ["two_column_div"],["content_div"], [".remove-cell",".dummy-cell"], "group_unrestriction()"),
      new DisplayDiv("AgathaEmail_action_div", "first_menu_div", [], [], [], ""),
      new DisplayDiv("welcome_Group", "first_div_2", [], ["Group_action_div"], [ ".remove_from_group_title"], "set_double_scroll();group_restriction('agatha_emails'); set_action_class('AgathaEmail','Group','remove_from_groups')")]));
    agatha_email_page_views.each(function(page_view)
    {
       page_view.RegisterClasses(["welcome_AgathaEmail"],[".create_new_entry",".help-cell",".search_title",  ".default_class"]);
       page_view.RegisterClasses(["welcome_Group","welcome_Person"],[".select_options", ".select-cell"]);
    });
    displayPageCl.set('AgathaEmail', agatha_email_page_views);
    add_action_items(agatha_email_page_views);
    option_hash.set('AgathaEmail',0);

    next_option_id = 0;
    group_filtering_page_views = [];
    group_filtering_page_views.push(new PageView("options", "GroupFiltering", "Select Action",true,
      [new DisplayDiv("welcome_GroupFiltering", "first_div", ["content_div"],["two_column_div"], ["update-cell", "delete-cell",".add-cell", ".send-cell"], "")]));
    displayPageCl.set('GroupFiltering', group_filtering_page_views);
    add_action_items(group_filtering_page_views);
    option_hash.set('GroupFiltering',0);

    next_option_id = 0;
    field_display_format_page_views = [];
    field_display_format_page_views.push(new PageView("options", "FieldDisplayFormat", "Select Action",true,
      [new DisplayDiv("welcome_FieldDisplayFormat", "first_div", ["content_div"],["two_column_div"], ["update-cell", "delete-cell",".add-cell", ".send-cell"], "")]));
    displayPageCl.set('FieldDisplayFormat', field_display_format_page_views);
    add_action_items(field_display_format_page_views);
    option_hash.set('FieldDisplayFormat',0);

    
    action_select0();


    form_id = "display_page"
    form_elt = $(form_id);
    form_elt.onsubmit();

}
function add_action_items(page_views)
{
    administrator_div = $("administrator_div");
    table_name = page_views[0].page_name;
    select_id = "action_select_" + table_name;
    select_obj = $(select_id);

    if(page_views.length > 1 && typeof(select_obj) != "undefined")
    {
        page_views.each(function(page_view)
        {
            if(page_view.unrestricted || typeof(administrator_div) != "undefined")
            {
                id_str = "action_select_"+table_name+"_"+page_view.option_id;
                value_str = "" + page_view.option_id;
                var new_option = new Element('option', {'id':  id_str, 'value': value_str})
                new_option.innerHTML = page_view.page_option_str;
                select_obj.insert({'bottom':new_option});
            }
        });
    }
}

var old_page_name = "Person";
var old_option_id = 0;
function action_select0()
{
    select_str = "action_select_"+old_page_name;
    select_elt = $(select_str);
    option_id = parseInt(select_elt.value);
    do_js = true;
    display_select_action(old_page_name, option_id, do_js);

}
function action_select_no_js()
{
    select_str = "action_select_"+old_page_name;
    select_elt = $(select_str);
    option_id = parseInt(select_elt.value);
    do_js = false;
    display_select_action(old_page_name, option_id, do_js);

}

function action_select2(table_name)
{
    select_str = "action_select_"+table_name;
    select_elt = $(select_str);
    option_id = parseInt(select_elt.value);
    do_js = true;
    display_select_action(table_name, option_id, do_js);
}
function display_page1(menu_name)
{
    table_name = sub_menu_hash.get(menu_name);
    option_id = option_hash.get(table_name);
    do_js = true;
    display_select_action(table_name, option_id, do_js);
}
function display_page2(menu_name, table_name)
{
    sub_menu_hash.set(menu_name, table_name);
    option_id = option_hash.get(table_name);
    do_js = true;
    display_select_action(table_name, option_id, do_js);
}

function display_select_action(table_name, option_id, do_js)
{
    option_hash.set(table_name, option_id);
    old_pages = displayPageCl.get(old_page_name );
    old_page = old_pages[old_option_id];


    page_views = displayPageCl.get(table_name);
    page_view = page_views[option_id];
    var visible_divs = [];
    page_view.display_divs.each(function(display_div)
    {
        visible_divs.push(display_div.div_id);
    });
    var invisible_divs = [];
    old_page.display_divs.each(function(old_display_div){
        if(visible_divs.indexOf(old_display_div.div_id)==-1)
        {
            invisible_divs.push(old_display_div.div_id);
        }
    });
    invisible_divs.each(function(invisible_div)
    {
        hide_div(invisible_div);
    });
    set_body_id(page_view.body_id);
    set_option(page_view.page_name, page_view.option_id);
    page_view.display_divs.each(function(display_div)
    {
        display_div.invisible_ids.each(function(invisible_id)
        {
            hide_div(invisible_id);
        });
        display_div.visible_ids.each(function(visible_id)
        {
            show_div(visible_id);
        });
        insert_div(display_div.div_id, display_div.insert_id);
        show_div(display_div.div_id);
        display_div.invisible_classes.each(function(invisible_class)
        {
            hide_class(display_div.div_id, invisible_class);
        });
        display_div.visible_classes.each(function(visible_class)
        {
            show_class(display_div.div_id, visible_class);
        });
        if(display_div.post_javascript.length>0 &&  do_js)
        {
            eval(display_div.post_javascript);
        }
    });
    old_page_name = table_name;
    old_option_id = option_id;
}

function action_select(table_name)
{
    wait();
    select_str = "action_select_"+table_name;
    select_elt = $(select_str);
    option_name = select_elt.value;
    page_name_id = "display_page_name"
    option_id = "display_page_option"
    form_id = "display_page"
    page_name_elt = $(page_name_id)
    option_elt = $(option_id);
    form_elt = $(form_id);
    page_name_elt.setAttribute("value", table_name);
    option_elt.setAttribute("value",option_name);
    form_elt.onsubmit();
}

function set_double_scroll()
{
    content_div_1 = $("content_div_1");
    content_div_2 = $("content_div_2");
    div_1_style = content_div_1.getAttribute("style");
    div_2_style = content_div_2.getAttribute("style");

    black_bar_separator_div = $("black_bar_separator_div");
    black_bar_style = black_bar_separator_div.getAttribute("style");
    left_1_pos = content_div_1.offsetLeft;
    black_bar_width= black_bar_separator_div.offsetWidth;

    frac_width = (window.innerWidth - left_1_pos - black_bar_width)/2
    div_width = Math.floor(frac_width);

    right_1_pos = left_1_pos+ div_width -1;
    from_right_1_pos_str = "right: " + (window.innerWidth - right_1_pos -1);
    left_black_bar = right_1_pos + 1;
    left_black_bar_str = "left: " + left_black_bar;

    left_2_pos = right_1_pos + black_bar_width;
    right_2_pos = 0;
    left_2_pos_str = "left: " + left_2_pos;

    

    div_1_new_style =  div_1_style.replace(/right: \d+/, from_right_1_pos_str);
    div_2_new_style =  div_2_style.replace(/left: \d+/, left_2_pos_str);
    black_bar_new_style = black_bar_style.replace(/left: \d+/, left_black_bar_str);

    content_div_1.setAttribute("style",div_1_new_style);
    content_div_2.setAttribute("style",div_2_new_style);
    black_bar_separator_div.setAttribute("style",black_bar_new_style);

}




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
    document.write('</div>');
    $('content_div').onscroll = scrollHandler;
    window.onresize = scrollHandler;
}

function display_page(page_name, option_str)
{
    wait();
    
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



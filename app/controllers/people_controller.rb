

class PeopleController < ApplicationController
  protect_from_forgery :only => [:create, :update, :destroy]
  def initialize
  @table_options = [["Person", 0],["Attendee", 1],["GroupMember",2],["Lecture",3],["TutorialSchedule",4],["Tutorial",5],["WillingTeacher",6]];
  end
    # GET /people
  # GET /people.xml
  def index
   d = 1;
     #     session[:search_table] = "People"
  #  session[:search_table] = "Attendee" #join of lecture_id and person_id
  #   seesion[:search_table] = "GroupMembers" # join of group_id and perons_id
  #   seesion[:search_table] = "Lecture" #join of course_id and person_id
  #   session[:search_table] = "TutorialSchedule" #join of course_id and person_id
  #   session[:search_table] = "Tutorial" #join of tutorial_id and person_id
  #   session[:search_table] = "WillingTeacher" #join course_id and person_id
#  x = SearchController.new("TutorialSchedule");
      
# session[:search_controllers]= nil
    unless session[:search_controllers]
    #  session[:search_controllers_symbols] = [:person, :attendee, :group_member, :lecture, :tutorial_schedule, :tutorial, :willing_teacher ];
      
      @search_controllers = []
      @number_of_controllers =  @table_options.length
      for controller_index in (0 .. @number_of_controllers -1)        
         @search_controllers<< SearchController.new(@table_options[controller_index][0]);
      end
      @search_controller = @search_controllers[0]
      
     # @search_controller = session[:search_controller];
      @table_index = 0;
      session[:table_options] = @table_options
      session[:table_index] = @table_index
      session[:search_controllers] =  @search_controllers
    end
     @table_index = session[:table_index]
    @search_controller = session[:search_controllers][@table_index];
  eval_str = @search_controller.get_eval_string2;
  
  
 # sql_str = @search_controller.get_sql_string;
  
  #sql_str = sql_str + " ";
# debugger
#people_3 = Person.find(:all,:conditions => "institutions.conventual_name SIMILAR TO 'U%'", :order => ' conventual_name asc',  :include => :institution)
#people_3 = Person.find( :all, :conditions => "institutions.conventual_name SIMILAR TO 'U%'", :order => "people.conventual_name asc", :include => :institution);

  

  #  people_3 = Person.find(:all,:conditions => "institutions.conventual_name SIMILAR TO 'U%'",  :include => :institution);
#people_3 = Person.find(:all,:conditions => "conventual_name SIMILAR TO 'U%' AND conventual_name SIMILAR TO ''" ,  :include => :institution);

#    inst2 = people_3[0].institution;
# name_1 = inst2.conventual_name;
# name_1 = 0;
#    group_member2 = GroupMember.find(:first, :conditions => "people.second_name like '%Verr%'" , :include => :person);
#   person1 = group_member2.person;
#   name1 = person1.first_name;
#   my_name = name1
#   group_members2 = GroupMember.find(:all, :conditions => "people.second_name like '%Verr%'" , :include => :person);
#   group_elt_1 = group_members2[0];
#  person2 = group_elt_1.person
#    name2 = person2.first_name
#    my_name_2 = name2;
#    people_1 = Person.find(:all, :include => :institution);
#    inst = people_1[0].institution;
#    name_1 = inst.conventual_name;
   # test = Person.find(:all, :order => ' id asc, title asc, first_name asc, second_name asc, postnomials asc, institutions.conventual_name asc',  :include => :institution)
#   people_2 = Person.find(:all, :order => ' id asc, title asc, first_name asc, second_name asc, postnomials asc',  :include => :institution)
#   inst2 = people_2[0].institution;
#   name_1 = inst2.conventual_name;
    #people_3 = Person.find(:all, :order => ' id asc, title asc, first_name asc, second_name asc, postnomials asc, institution.conventual_name asc',  :include => :institution)
#  people_3 = Person.find(:all, :order => 'institutions.conventual_name asc',  :include => :institution)
# people_3 = Person.find(:all, :order => 'title asc, first_name asc, second_name asc, postnomials asc, institution.conventual_name asc',  :include => :institution)
#    inst2 = people_3[0].institution;
#     name_1 = inst2.conventual_name;
#      people_3 = Person.find(:all, :order => '  people.title asc, people.first_name asc, people.second_name asc, people.postnomials asc, people.conventual_name asc,  institution.conventual_name asc',  :include => :institution)

     RAILS_DEFAULT_LOGGER.error( "DEBUG: before eval(#{eval_str})" );
     @table = eval(eval_str);
     RAILS_DEFAULT_LOGGER.error( "DEBUG: after eval(eval_str)" );

   # flash[:notice]= eval_str;

  #  if(@search_controller == nil)
  #    @search_controller = SearchController.new;
   # end

#    column_hash = GroupMember.columns_hash();
 #   associations = GroupMember.reflect_on_all_associations(:belongs_to);
 #  another_association =   GroupMember.reflect_on_association(:person);
#    x = associations;
 #   group_column = column_hash['group_id'];
 #   group_member2 = GroupMember.find(:first, :conditions => "people.second_name like '%Verr%'" , :include => :person);
# z2 = eval("group_member2.person.second_name");
 



    
#    if(!session[:people])

 
#    if session[:searchstrYear] == "%"
 #     session[:searchstr] = "second_name SIMILAR TO \'" + session[:searchstr2nd] + "\' AND first_name SIMILAR TO \'" + session[:searchstr1st] + "\'"
 #   else
#      session[:searchstr] = "second_name SIMILAR TO \'" + session[:searchstr2nd] + "\' AND first_name SIMILAR TO \'" + session[:searchstr1st] + "\' AND entry_year = \'" + session[:searchstrYear] + "\'"
#    end
  
   # session[:people]  = Person.find(:all,:conditions => session[:searchstr], :order => Person::SortOrder[session[:sortOption]] )
 #   end

 #   @people = session[:people]

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @people }
    end
  end

  def clear_filter


  #  session[:searchstr2nd] = "%"
   # session[:searchstr1st] = "%"
  #  session[:searchstrYear] = "%"
 #   session[:sortOption] = 0
  #  session[:people] = nil
  
    respond_to do |format|
      format.html { redirect_to :action => 'index' }
      # format.xml  { render :xml => @people }
    end

  end
  def table_submit
    @search_controllers = session[:search_controllers];

    table_index =  params[:table_selector].to_i;

    @table_index = table_index;
    @table_str = @table_options[@table_index][0];
    @search_controller =@search_controllers[table_index];
    case params[:commit]
    when "Search"
      table_search
    else
      session[:search_controllers] =  @search_controllers;
      session[:table_index] =  @table_index;
      new
    end
  end


  
  def table_search

    current_filter_indices = [];
    possible_filter_indices = [];
    current_field_indices = [];
    possible_field_indices = [];
    for filter in @search_controller.available_fields
      if(params.has_key?(filter.tag))
        current_filter_indices << filter.id
        if params[filter.tag] == ""
          filter.current_filter_string = "%"
        else
          filter.current_filter_string = params[filter.tag]
        end
      else
        possible_filter_indices << filter.id
      end
      if(params.has_key?("f_#{filter.tag}"))
        current_field_indices << filter.id
      else
        possible_field_indices << filter.id
      end
    end
    @search_controller.updateFilters(current_filter_indices)
    if(current_field_indices.length>3)
      @search_controller.updateFields(current_field_indices)
    end
    if(params.has_key?("order_text"))
      order_index = params["order_text"]; 
      @search_controller.UpdateOrder(order_index.to_i)
    end
    session[:search_controllers] =  @search_controllers;
    session[:table_index] =  @table_index;
    
    
    respond_to do |format|
      format.html { redirect_to(people_url) }

    end


 end
    

  # GET /people/search
  def search
    if params[:searchstr2nd] == ""
      session[:searchstr2nd] = "%"
    else
      session[:searchstr2nd] = params[:searchstr2nd];
    end

    if params[:searchstr1st] == ""
      session[:searchstr1st] = "%"
    else
      session[:searchstr1st] = params[:searchstr1st];
    end
      
    if params[:searchstrYear] == ""
      session[:searchstrYear] = "%"
    else
      session[:searchstrYear] = params[:searchstrYear];
    end
    #session[:sortOption] = Person::SortHash['Sort by Entry Year']
    session[:sortOption] = Person::SortHash[params[:sort].to_s]
    # session[:sortOption] = params[:sort]
    session[:people] = nil
    respond_to do |format|
      format.html { redirect_to(people_url) }
     
    end
    #render :template => 'people/index'
  end

  def list_update

    case params[:commit]
    when "Add selected to list"
      add_to_list
    when "Remove selected from list"
      remove_from_list
    when "Delete list"
     
      delete_list
    else
      create_new_list
    end
    
    respond_to do |format|
      format.html { redirect_to :action => 'index' }
    end
  end

  def add_to_list
    group_name = params[:group_list];
    selected_group = Group.find(:first, :conditions => ["group_name = ?", group_name]);
    if (selected_group != nil)
      new_members = 0;
      current_members = 0;
      group_id = selected_group.id;
      if params[:row_in_list]
        for person_id in params[:row_in_list]
          if(!GroupMember.exists?(["group_id = #{group_id} AND person_id = #{person_id}"]))
              group_member = GroupMember.new;
              group_member.group_id = group_id;
              group_member.person_id = person_id;
              group_member.save;
              new_members = new_members+1;
            else
              current_members = current_members + 1;
            end
          end
        end
        flash[:notice] = "Could not find group #{group_name} in the database}"
      else
        flash[:notice] = "Could not find group #{group_name} in the database}"
      end
    
      if new_members == 1
         member_str = "1 member has been added to the group #{group_name}. "
      else
         member_str = "#{new_members} members have been added to the group #{group_name}. "
      end
      if current_members >0
        if  current_members ==1
          current_str = "1 member was currently in the group #{group_name}"
        else
          current_str = "#{current_members} members were currently in the group #{group_name}"
        end
      else
        current_str = ""
      end
      flash[:notice] = member_str + current_str;

    end
  def delete_entries
    @table_index = session[:table_index]
    @table_str = @table_options[@table_index][0];
    not_entries = 0;
      removed_entries = 0;

      if params[:row_in_list]
         for id in params[:row_in_list]
           object_str = "#{@table_str}.find(id)"
           object_to_destroy = eval(object_str);

          if object_to_destroy
             object_to_destroy.destroy;
            removed_entries = removed_entries+1;
          else
            not_entries = not_entries+1;
          end
        end
      end
   if removed_entries == 1
        removed_str = "1 entry has been removed from the table #{@table_str}. "
      else
        removed_str = "#{removed_entries} entries have been removed from the table #{@table_str}. "
      end
      if  not_entries>0
        if  not_entries == 1
          not_present_str = "1 selected entry wasn't already in the table #{@table_str}."
        else
          not_present_str = "#{not_entries} selected entry weren't already in the table #{@table_str}."
        end
      else
        not_present_str = ""
      end
        flash[:notice] = removed_str +not_present_str;
    respond_to do |format|
      format.html { redirect_to :action => 'index' }
    end

  end
  def delete_list
    group_name = params[:group_list];
    selected_group = Group.find(:first, :conditions => ["group_name = ?", group_name]);
    if (selected_group != nil)
      new_members = 0;
      current_members = 0;
      group_members = GroupMember.find(:all, :conditions => ["group_id = ?",selected_group.id]);
      
        for group_member in group_members
          group_member.destroy;          
          end
        selected_group.destroy;
     
        flash[:notice] = "Group #{group_name} has been removed from the database"
    else
      flash[:notice] = "Something went wrong! Couldn't find group #{group_name}"
      end
    
  end
  def remove_from_list
   group_name = params[:group_list];
    selected_group = Group.find(:first, :conditions => ["group_name = ?", group_name]);
    group_id = selected_group.id;
    if (selected_group != nil)
      not_present = 0;
      removed_members = 0;

      if params[:row_in_list]
         for person_id in params[:row_in_list]
          group_member = GroupMember.find(:first, :conditions => ["group_id = #{group_id} AND person_id = #{person_id}"]);
          if group_member
             group_member.destroy;
            removed_members = removed_members+1;
          else
            not_present = not_present+1;            
          end
        end
      end
      if removed_members == 1
        removed_str = "1 member has been removed from the group #{group_name}. "
      else
        removed_str = "#{removed_members} members have been removed from the group #{group_name}. "
      end
      if  not_present>0
        if  not_present == 1
          not_present_str = "1 selected person wasn't already in the group #{group_name}."
        else
          not_present_str = "#{not_present} selected people weren't already in the group #{group_name}."
        end
      else
        not_present_str = ""
      end
        flash[:notice] = removed_str +not_present_str;
    else    
       flash[:notice] = "Something went wrong! Couldn't find group #{group_name}"
    end
  end
  def create_new_list
    new_group_name = params[:new_group_name].strip;
    
    if  Group.exists?(["group_name = ?", new_group_name])
      flash[:notice] = "Group #{new_group_name} already exists"
    else
      group = Group.new;
      group.group_name = new_group_name;
      group.save;
      group_id = group.id;
      @people = session[:people];
      total_people = @people.length;
      new_members =0;
      if params[:row_in_list]
        for person_id in params[:row_in_list]

          group_member = GroupMember.new;
          group_member.group_id = group_id;
          group_member.person_id = person_id;
          group_member.save;
          new_members = new_members+1;        
        end
      end
      member_str = " members have been added to the new group "
      if new_members == 1
        member_str = "member has been added to the new group "
      end
      flash[:notice] = "#{new_members.to_s} #{member_str} #{new_group_name}"
    end


  end

  # GET /people/1
  # GET /people/1.xml
  def show
    id = params[:id].to_i

    @person = Person.find(id)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @person }
    end
  end

  # GET /people/new
  # GET /people/new.xml
  def new
    table_index =  params[:table_selector].to_i;

    @table_index = table_index;
    @table_str = @table_options[@table_index][0];
    session[:table_index]
    @table_str = @table_options[@table_index][0];
    object_str = "#{@table_str}.new"


    new_current_object  = eval(object_str );
    if new_current_object
      @current_object  = new_current_object
      respond_to do |format|
        format.html {render :action => "edit"  }
      end
    else
      fail_str = "Failed  to find #{@table_str}  with id #{id}."
      flash[:notice] = fail_str;
      respond_to do |format|
        format.html   { redirect_to(people_url) }
      end
    end
  end

  # GET /people/1/edit
  def edit
    #@person = Person.find(params[:id])
    id = params[:id];
    @table_index = session[:table_index]
    @table_str = @table_options[@table_index][0];
    object_str = "#{@table_str}.find(id)"


    new_current_object  = eval(object_str );
    if new_current_object
      @current_object  = new_current_object
      respond_to do |format|
        format.html {render :action => "edit"  }
      end
    else
      fail_str = "Failed  to find #{@table_str}  with id #{id}."
      flash[:notice] = fail_str;
      respond_to do |format|
        format.html   { redirect_to(people_url) }
      end
    end
  end
  def copy
    #@person = Person.find(params[:id])
    

    old_id = params[:id];
    @table_index = session[:table_index]
    @table_str = @table_options[@table_index][0];
    old_object_str = "#{@table_str}.find(params[:id])"
    new_object_str = "#{@table_str}.new"

    attribute_str = " #{@table_str}.columns"
    old_object = eval(old_object_str);
    new_object = eval(new_object_str);
    attributes = eval(attribute_str);
    for attribute in attributes
      attr_name = attribute.name
      if(attr_name != "id")
        set_attribute_str = "new_object.#{attr_name} = old_object.#{attr_name}"
        eval(set_attribute_str);
      end
    end

    
    
    
    
    if new_object.save
      @current_object = new_object
      flash[:notice] = "Successfully created new #{@table_str} from #{@table_str} with id #{old_id}."
      respond_to do |format|
        format.html  { render :action => "edit" }
      end
    else
      fail_str = "Failed  to create new #{@table_str} from #{@table_str} with id #{old_id}."
      flash[:notice] = fail_str;
      respond_to do |format|
      format.html  { redirect_to(people_url) }
      # format.xml  { render :xml => @people }
      end
    end

  end
  def delete
    x = 1;
     x = x + 1;
    #@person = Person.find(params[:id])
    id = params[:id];
    @table_index = session[:table_index]
    @table_str = @table_options[@table_index][0];
    object_str = "#{@table_str}.find(id)"
    current_object = eval(object_str);
    if(current_object)
      current_object.destroy
    end
    respond_to do |format|
      format.html { redirect_to(people_url) }
    
  end
  end
  
  # POST /people
  # POST /people.xml
  def create
    @person = Person.new(params[:person])



    respond_to do |format|
      # begin
      if @person.save
        flash[:notice] = 'Person was successfully created.'


        # condition_str = "id = " + @person.id.to_s + " AND " + session[:searchstr]
        
        #condition_str = "id = " + @person.id.to_s   
        condition_str = "id IN (30)"
        begin #there must surely be a better way
          temp_person = Person.find(@person.id, :conditions => session[:searchstr])
        rescue ActiveRecord::RecordNotFound 
          temp_person = nil
        end

        #I can't get Person.exist?(condition_str) with both condition and ID specified. It's so unintuitive.
        if temp_person
          format.html { redirect_to(people_url) }
        else
          format.html {redirect_to :action => 'clear_filter'}
        end
        
        format.xml  { render :xml => @person, :status => :created, :location => @person }
      else 
        format.html { render :action => "new" }
        format.xml  { render :xml => @person.errors, :status => :unprocessable_entity }
      
      end
      # rescue Exception => exc

      #   format.html { render :action => "new" }
      #   format.xml  { render :xml => @person.errors, :status => :unprocessable_entity }
      #  end
    end
  end

  # GET /people/courses
  def courses
    @person = Person.find(params[:id])
    @scourses = @person.student_courses
    @sprogrammes = @person.student_programmes
    @courses = Course.find(:all).map {|u| [u.name, u.id] }
    @programmes = Programme.find(:all).map { |u| [u.name, u.id] }
    @student_course = StudentCourse.new
    @student_course.person_id = @person.id
    @programme = StudentProgramme.new
    @programme.person_id = @person.id
  end
  
  # GET /people/add_scourse
  def add_scourse
    @student_course = StudentCourse.new(params[:student_course])
    if @student_course.save
      flash[:notice] = 'Added course to student successfully.'
    end
    redirect_to :action=> "courses", :id => @student_course.person_id
  end

  # GET /people/edit_scourse
  def edit_scourse
    @student_course = StudentCourse.find(params[:id])
    @person = @student_course.person
    @course = @student_course.course
  end

  # PUT /people/update_scourse
  def update_scourse
    @student_course = StudentCourse.find(params[:id])

    if @student_course.update_attributes(params[:student_course])
      flash[:notice] = 'Course successfully updated.'
      redirect_to :action => "courses", :id => @student_course.person_id
    else
      render :action => "edit_scourse"
    end
  end
  
  # PUT /people/delete_scourse
  def delete_scourse
    @scourse = StudentCourse.find(params[:id])
    id = @scourse.person_id
    @scourse.destroy
    flash[:notice] = 'Course removed from student.'
    redirect_to :action => "courses", :id => id
  end

  # PUT /people/add_programme
  def add_programme
    @programme = StudentProgramme.new(params[:student_programme])
    if @programme.save
      for pcourse in @programme.programme.pcourses
        @scourse = StudentCourse.new
        @scourse.person_id = @programme.person_id
        @scourse.course_id = pcourse.course_id
        @scourse.programme_id = @programme.programme_id
        @scourse.save
      end
      flash[:notice] = 'Added programme to student successfully.'
    end
    redirect_to :action => :courses, :id => @programme.person_id
  end

  # PUT /people/delete_programme
  def delete_programme
    @programme = StudentProgramme.find(params[:id])
    id = @programme.person_id
    @programme.destroy
    flash[:notice] = 'Programme removed from student'
    redirect_to :action => :courses, :id => id
  end

  # PUT /people/1
  # PUT /people/1.xml
  def update
    found = false;
    updated = false;
    saved = false
  #  id = params[:id];
    @table_index = session[:table_index]
    @table_str = @table_options[@table_index][0];
    object_str = "#{@table_str}.find(id)"
    new_object_str = "#{@table_str}.new"

  #  updated_object = params[:person];
    updated_object = params[@table_str.downcase.to_sym];
    id = updated_object[:id];
    if (id.length == 0)
      current_object = eval(new_object_str);
    else
      current_object = eval(object_str);
    end

    
    if current_object
      found = true;
    end

    if( current_object)
      current_object.update_attributes(updated_object )
      updated = true;
      if updated && current_object.save
        saved = true;
      end
    end

    if saved
        flash_str = "#{@table_str} with id #{current_object.id} was successfully updated."
        flash[:notice] = flash_str
        RAILS_DEFAULT_LOGGER.error(flash_str);
      else
        flash_str = "Failed to update #{@table_str} with id #{current_object.id}. Found value = #{found}, updated value = #{updated}, saved value = #{saved}"
        flash[:notice] = flash_str;
        RAILS_DEFAULT_LOGGER.error(flash_str);
    end

    respond_to do |format|
      format.html { redirect_to(people_url) }

    end


    end
    
 

  # DELETE /people/1
  # DELETE /people/1.xml
  def destroy
    @person = Person.find(params[:id])
    
    if Lecture.exists?(:person_id => @person.id)
      flash[:notice] = 'FAILED: You must remove the person from any lecture schedules before deleting'
      respond_to do |format|
        format.html { redirect_to(people_url) }
        format.xml  { head :ok }
      end
    else
      if Attendee.exists?(["person_id = ?", @person.id])
        Attendee.delete_all(["person_id = ?", @person.id])
      end
      if StudentCourse.exists?(["person_id = ?", @person.id])
        StudentCourse.delete_all( ["person_id = ?", @person.id])
      end
      if StudentProgramme.exists?(["person_id = ?", @person.id])
        StudentProgramme.delete_all(["person_id = ?", @person.id])
      end
      @person.destroy
      flash[:notice] = 'Person was successfully deleted.'
      respond_to do |format|
        format.html { redirect_to(people_url) }
        format.xml  { head :ok }
      end
    end
  end
  def import_csv
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

    status_csvs = StatusCsv.find(:all);

    for csv_status in status_csvs
      group = Group.new;
      group.group_name = csv_status.status;
      group.save;
      old_group_ids << csv_status.id;
      new_group_ids << group.id;
    end

    people_csvs = PersonCsv.find(:all);

    not_set_institution =  Institution.new;
       not_set_institution.old_name = "";
       not_set_institution.title = "";
       not_set_institution.first_name = "";
       not_set_institution.second_name = "";
       not_set_institution.salutation = "";
       not_set_institution.term_address = "";
        not_set_institution.term_city = "";
        not_set_institution.term_postcode = "";
       not_set_institution.conventual_name = "";
       not_set_institution.save;
       
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
      if( entry_year!=nil && entry_year>1000 )
        person.entry_year = entry_year;
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
              new_institution.institution_type = i;
              new_institution.save;
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
          person.institution_id = not_set_institution.id;
        end
        if new_ids[1]!=0
          person.religious_house_id = new_ids[1];
        else
          person.religious_house_id = not_set_institution.id;
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
          if status_id_array.index(20)
            new_institution.institution_type = 0;#institution
          else
            new_institution.institution_type = 1;#religous house
          end
          new_institution.save;
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
            group_member = GroupMember.new;
            group_member.group_id = new_group_ids[status_index];
            group_member.person_id = person.id;
            group_member.save;
          end
        end
      end

      

    end

    csv_courses = CourseCsv.find(:all);
    for csv_course in csv_courses
      new_course = Course.new;
      new_course.name =  csv_course.course_name;
      new_course.save;
      old_course_ids << csv_course.id;
      new_course_ids << new_course.id;
    end

    csv_terms = TermCsv.find(:all);
    for csv_term in csv_terms
      new_term = Term.new;
      new_term.term_number = csv_term.name;
      new_term.year = csv_term.year;
      new_term.save;
      old_term_ids << csv_term.id;
      new_term_ids << new_term.id;
    end
    csv_days = DayCsv.find(:all);


    for csv_day in csv_days
      day = Day.new;
      day.long_name = csv_day.long_name;
      day.short_name = csv_day.short_name;
      if csv_day.long_name =~ /Sunday/
        day.Sunday = true;
      else
        day.Sunday = false;
      end
      if csv_day.long_name =~ /Monday/
        day.Monday = true;
      else
        day.Monday = false;
      end
      if csv_day.long_name =~ /Tuesday/
        day.Tuesday = true;
      else
        day.Tuesday = false;
      end
      if csv_day.long_name =~ /Wednesday/
        day.Wednesday = true;
      else
        day.Wednesday = false;
      end
      if csv_day.long_name =~ /Thursday/
        day.Thursday = true;
      else
        day.Thursday = false;
      end
      if csv_day.long_name =~ /Friday/
        day.Friday = true;
      else
        day.Friday = false;
      end
      if csv_day.long_name =~ /Saturday/
        day.Saturday = true;
      else
        day.Saturday = false;
      end

      day.save;

      old_day_ids << csv_day.id;
      new_day_ids << day.id;
    end
    no_location = Location.new;
    no_location.name = ""
    no_location.save;


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
        new_lecture.location_id = no_location.id;
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

    csv_attendees = AttendeeCsv.find(:all);
    for csv_attendee in csv_attendees
      lecture_index = old_lecture_ids.index(csv_attendee.lectures_course);
      person_index = old_person_ids.index(csv_attendee.student);
      if(lecture_index != nil && person_index != nil)
        new_attendee = Attendee.new;
        new_attendee.lecture_id = new_lecture_ids[lecture_index];
        new_attendee.person_id = new_person_ids[person_index];
        new_attendee.compulsory = csv_attendee.compulsory;
        new_attendee.comment = csv_attendee.mark;
        new_attendee.examined = csv_attendee.examined;
        new_attendee.save;
      end
    end

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
          tutorial_schedule.total_tutorials = 0;
          tutorial_schedule.save;
        end
        tutorial.person_id = new_person_ids[student_index];
        tutorial.tutorial_schedule_id = tutorial_schedule.id;
        tutorial.number_of_tutorials = csv_tutorial.number;
        tutorial_hours = csv_tutorial.hours;
        if tutorial_hours !=nil && tutorial_hours != 0
          tutorial.hours = tutorial_hours;
        end
        tutorial.notes = csv_tutorial.notes
        tutorial.comment = csv_tutorial.mark;
        tutorial_schedule.total_tutorials = tutorial_schedule.total_tutorials + tutorial.number_of_tutorials;
        tutorial_schedule.save;
        tutorial.save;
      end
    end

    respond_to do |format|
      format.html { redirect_to(people_url) }
    end
  end
  def import_courses
    old_day_ids = [];
    new_day_ids = [];
    csv_days = DayCsv.find(:all);
    
    for csv_day in csv_days
      day = Day.new;
      day.long_name = csv_day.long_name;
      day.short_name = csv_day.short_name;
      if csv_day.long_name =~ /Sunday/
        day.Sunday = true;
      else
        day.Sunday = false;
      end
      if csv_day.long_name =~ /Monday/
        day.Monday = true;
      else
        day.Monday = false;
      end
      if csv_day.long_name =~ /Tuesday/
        day.Tuesday = true;
      else
        day.Tuesday = false;
      end
      if csv_day.long_name =~ /Wednesday/
        day.Wednesday = true;
      else
        day.Wednesday = false;
      end
      if csv_day.long_name =~ /Thursday/
        day.Thursday = true;
      else
        day.Thursday = false;
      end
      if csv_day.long_name =~ /Friday/
        day.Friday = true;
      else
        day.Friday = false;
      end
      if csv_day.long_name =~ /Saturday/
        day.Saturday = true;
      else
        day.Saturday = false;
      end

      day.save;

      old_day_ids << csv_day.id;
      new_day_ids << day.id;
    end
    day = Day.find(:last);
    x = day.Tuesday;

   


     
    new_day = Day.find(:first, :conditions => ["Tuesday = ? AND Wednesday = ?", day.Tuesday, day.Wednesday]);

    respond_to do |format|
      format.html { redirect_to(people_url) }
    end


  end

end



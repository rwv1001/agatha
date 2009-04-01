class PeopleController < ApplicationController
  # GET /people
  # GET /people.xml
  def index

 
    if session[:searchstrYear] == "%"
      session[:searchstr] = "second_name SIMILAR TO \'" + session[:searchstr2nd] + "\' AND first_name SIMILAR TO \'" + session[:searchstr1st] + "\'"
    else
      session[:searchstr] = "second_name SIMILAR TO \'" + session[:searchstr2nd] + "\' AND first_name SIMILAR TO \'" + session[:searchstr1st] + "\' AND entry_year = \'" + session[:searchstrYear] + "\'"
    end
  
    @people = Person.find(:all,:conditions => session[:searchstr], :order => Person::SortOrder[session[:sortOption]] )


    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @people }
    end
  end

  def clear_filter

    session[:searchstr2nd] = "%"
    session[:searchstr1st] = "%"
    session[:searchstrYear] = "%"
    session[:sortOption] = 0

  
    respond_to do |format|
      format.html { redirect_to :action => 'index' }
      # format.xml  { render :xml => @people }
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
    respond_to do |format|
      format.html { redirect_to(people_url) }
     
    end
    #render :template => 'people/index'
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
    @person = Person.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @person }
    end
  end

  # GET /people/1/edit
  def edit
    @person = Person.find(params[:id])
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
    @person = Person.find(params[:id])




    respond_to do |format|
      if @person.update_attributes(params[:person])
        flash[:notice] = 'Person was successfully updated.'     
            
        format.html { redirect_to(@person) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @person.errors, :status => :unprocessable_entity }
      end
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

    status_csvs = StatusCsv.find(:all);

    for csv_status in status_csvs
      group = Group.new;
      group.group_name = csv_status.status;
      group.save;
      old_group_ids << csv_status.id;
      new_group_ids << group.id;
    end

    people_csvs = PersonCsv.find(:all);

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
      person.entry_year = people_csv.entry_year;
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
          person.institution = new_ids[0];
        end
        if new_ids[1]!=0
          person.institution = new_ids[1];
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

    csv_lectures = LectureCsv.find(:all);
    for csv_lecture in csv_lectures

      course_index = old_course_ids.index(csv_lecture.course );
      term_index = old_term_ids.index(csv_lecture.term);
      tutor_index = old_person_ids.index(csv_lecture.tutor);
      if( course_index != nil && term_index != nil && tutor_index != nil)
        new_lecture = Lecture.new;
        new_lecture.term = new_term_ids[term_index];
        new_lecture.course_id = new_course_ids[course_index];
        new_lecture.person_id = new_person_ids[tutor_index];
        new_lecture.exam = csv_lecture.examination;
        new_lecture.day = csv_lecture.day;
        new_lecture.lecture_time = csv_lecture.lecture_time;
        new_lecture.number_of_classes = csv_lecture.number_of_classes;
        new_lecture.number_of_lectures = csv_lecture.number_of_lectures;
        new_lecture.hours = csv_lecture.hours;
        new_lecture.notes = csv_lecture.notes;
        new_lecture.save;
        
      end
    end


    respond_to do |format|
      format.html { redirect_to(people_url) }
    end
  end
  def import_courses
    csv_lecture = LectureCsv.find(1);
    new_lecture =  Lecture.new;
    new_lecture.lecture_time = csv_lecture.lecture_time;
    new_lecture.save;
    csv_terms = TermCsv.find(:all);
    for csv_term in csv_terms
      new_term = Term.new;
      new_term.term_number = csv_term.name;
      new_term.year = csv_term.year;
      new_term.save;
      
    end
    csv_courses = CourseCsv.find(:all);
    for csv_course in csv_courses
      new_course = Course.new;
      new_course.name =  csv_course.course_name;
      new_course.save;
    end
    respond_to do |format|
      format.html { redirect_to(people_url) }
    end


  end

end



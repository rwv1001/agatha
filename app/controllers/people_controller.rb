class PeopleController < ApplicationController
  # GET /people
  # GET /people.xml
  def index
    @people = Person.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @people }
    end
  end

  # GET /people/search
  def search
      @people = Person.find(:all,
                            :conditions => ["second_name ilike '%' || ? || '%'", params[:searchstr]])
      render :template => 'people/index'
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
      if @person.save
        flash[:notice] = 'Person was successfully created.'
        format.html { redirect_to(@person) }
        format.xml  { render :xml => @person, :status => :created, :location => @person }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @person.errors, :status => :unprocessable_entity }
      end
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
    @person.destroy

    respond_to do |format|
      format.html { redirect_to(people_url) }
      format.xml  { head :ok }
    end
  end
end

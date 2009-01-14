class CoursesController < ApplicationController
  # GET /courses
  # GET /courses.xml
  def index
    @courses = Course.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @courses }
    end
  end

  # GET /courses/1
  # GET /courses/1.xml
  def show
    @course = Course.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @course }
    end
  end

  # GET /courses/new
  # GET /courses/new.xml
  def new
    @course = Course.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @course }
    end
  end

  # GET /courses/1/edit
  def edit
    @course = Course.find(params[:id])
  end

  # POST /courses
  # POST /courses.xml
  def create
    @course = Course.new(params[:course])

    respond_to do |format|
      if @course.save
        flash[:notice] = 'Course was successfully created.'
        format.html { redirect_to(courses_url) }
        format.xml  { render :xml => @course, :status => :created, :location => @course }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /courses/1
  # PUT /courses/1.xml
  def update
    @course = Course.find(params[:id])

    respond_to do |format|
      if @course.update_attributes(params[:course])
        flash[:notice] = 'Course was successfully updated.'
        format.html  { redirect_to(courses_url) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @course.errors, :status => :unprocessable_entity }
      end
    end
 end

  def new_lecture
    lecture = Lecture.new(params[:lecture])
    #lecture = Lecture.create(params[:lecture])

 	respond_to do |format|
	  if lecture.save
             flash[:notice] = 'Schedule was successfully added.'
	    else
	     flash[:notice] = 'Failed to add schedule.'
	  end
          format.html  { redirect_to(courses_url) }
          format.xml  { head :ok }
	end
  end

def add_attendee
    attendee = Attendee.new(params[:attendee])
    lecture_id =  attendee[:lecture_id] 

 	respond_to do |format|
	  if attendee.save
             flash[:notice] = 'Attendee was successfully added.'
	    else
	     flash[:notice] = 'Failed to add attendee.'
	  end
          format.html { redirect_to :action => "attendees", :id => lecture_id }
          format.xml  { head :ok }
	end
end

  def delete_attendee
    attendee = Attendee.find(params[:id])
    lecture_id =  attendee[:lecture_id]   
    attendee.destroy



    respond_to do |format|
      format.html { redirect_to :action => "attendees", :id => lecture_id }
      format.xml  { head :ok }   
    end
  end

  def delete_lecture
    lecture = Lecture.find(params[:id])
    if Attendee.exists?(["lecture_id = ?", lecture.id])
           Attendee.delete_all(["lecture_id = ?", lecture.id])
    end
    lecture.destroy

    respond_to do |format|
      format.html { redirect_to(courses_url) }
      format.xml  { head :ok }
    end

  end

  # DELETE /courses/1
  # DELETE /courses/1.xml
  def destroy
    @course = Course.find(params[:id])
    if StudentCourse.exists?(["course_id = ?", @course.id])
           StudentCourse.delete_all(["course_id = ?", @course.id])
    end

    if Pcourse.exists?(["course_id = ?", @course.id])
           Pcourse.delete_all(["course_id = ?", @course.id])
    end
    if Lecture.exists?(["course_id = ?", @course.id])
           Lecture.delete_all(["course_id = ?", @course.id])
    end
    @course.destroy

    respond_to do |format|
      format.html { redirect_to(courses_url) }
      format.xml  { head :ok }
    end
  end
end

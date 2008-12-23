class CoursesController < ApplicationController
  
  def index
    @courses = Course.find(:all)
    @course = Course.new
    
    respond_to do |format|
      format.html
    end
  end
  
  def edit
    @course = Course.find(params[:id])
  end
  
  def update
    @course = Course.find(params[:id])

    respond_to do |format|
      if @course.update_attributes(params[:course])
        flash[:notice] = 'Course was successfully updated.'
        format.html { redirect_to :action => :index }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @person.errors, :status => :unprocessable_entity }
      end
    end
  end

  def create
    @course = Course.new(params[:course])
    respond_to do |format|
      if @course.save
        flash[:notice] = 'Course was successfully created.'
        format.html { redirect_to :action => :index }
      else
        format.html { render :action => :index }
      end
    end
  end
    
  def destroy
    @course = Course.find(params[:id])
    @course.destroy

    respond_to do |format|
      format.html { redirect_to :action => :index }
      format.xml  { head :ok }
    end
  end

  def delete_lecture
     @lecture = Lecture.find(params[:id])
     @lecture.destroy
     redirect_to :action => :index
  end

  def schedule_lecture
      @course = Course.find(params[:id])
      @lecture = Lecture.new
      @lecture.course_id = @course.id
      @lecturers = Person.find(:all).map {|u| [ u.first_name + " " + u.second_name, u.id ] }
  end

  def new_lecture
      @lecture = Lecture.new(params[:lecture])
      if @lecture.save
          flash[:notice] = "Scheduled new lecture"
          redirect_to :action => :index
      else
          render :action => :schedule_lecture
      end
  end

  def attendees
      @lecture = Lecture.find(params[:id])
      @people = Person.find(:all).map {|u| [ u.first_name + " " + u.second_name, u.id ] }
      @attendee = Attendee.new
      @attendee.lecture_id = @lecture.id
  end

  def add_attendee
      @attendee = Attendee.new(params[:attendee])
      if @attendee.save
          flash[:notice] = "Added attendee"
      end
      redirect_to :action => :attendees, :id => @attendee.lecture_id
  end

  def delete_attendee
      @attendee = Attendee.find(params[:id])
      id = @attendee.lecture_id
      @attendee.destroy
      redirect_to :action => :attendees, :id => id
  end

end

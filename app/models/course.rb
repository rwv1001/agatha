class Course < ActiveRecord::Base
  @@class_name ||= "Course"
def class_name
  return @@class_name
end
def self.set_controller(search_controller_)
  @@search_controller = search_controller_
end

def search_controller
  return @@search_controller
end
  USER_WHERE_STR = "";
  
  has_many :tutorial_schedules, :class_name => "TutorialSchedule", :dependent => :destroy
  has_many :lectures, :class_name => "Lecture", :dependent => :destroy
end

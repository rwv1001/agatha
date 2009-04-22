class Course < ActiveRecord::Base
  TERMS = [
      ["Michaelmas",0],
      ["Hilary",1],
      ["Trinity",2]]
      
  TERM_NAMES = [ "Michaelmas", "Hilary", "Trinity" ]


  has_many :tutorial_schedules, :class_name => "TutorialSchedule", :dependent => :destroy
  has_many :lectures, :class_name => "Lecture", :dependent => :destroy
end

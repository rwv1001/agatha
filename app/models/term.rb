class Term < ActiveRecord::Base
  has_many :lectures, :class_name => "Lecture", :dependent => :destroy
  has_many :tutorial_schedules, :class_name => "TutorialSchedule", :dependent => :destroy
end

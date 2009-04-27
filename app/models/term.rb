class Term < ActiveRecord::Base
  has_many :lectures, :class_name => "Lecture", :dependent => :destroy
  has_many :tutorial_schedules, :class_name => "TutorialSchedule", :dependent => :destroy
  belongs_to :term_name, :class_name => "TermName", :foreign_key => "term_name_id"
end

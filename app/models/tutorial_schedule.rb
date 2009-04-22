class TutorialSchedule < ActiveRecord::Base
  belongs_to :tutor, :class_name => "Person", :foreign_key => "person_id"
  belongs_to :term, :class_name => "Term", :foreign_key => "term_id"
  belongs_to :course, :class_name => "Course", :foreign_key => "course_id"

  has_many :tutorials, :class_name => "Tutorial", :dependent => :destroy
  has_many :students, :class_name => "Person", :through => :tutorials
end

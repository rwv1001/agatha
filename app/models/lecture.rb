class Lecture < ActiveRecord::Base
    belongs_to :person, :class_name => "Person", :foreign_key => "person_id"
    belongs_to :course, :class_name => "Course", :foreign_key => "course_id"
    belongs_to :term, :class_name => "Term", :foreign_key => "term_id"
    belongs_to :day, :class_name => "Day", :foreign_key => "day_id"
    has_many :attendees, :dependent => :destroy
end

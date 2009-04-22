class Lecture < ActiveRecord::Base
    belongs_to :lecturer, :class_name => "Person", :foreign_key => "person_id"
    belongs_to :course, :class_name => "Course", :foreign_key => "course_id"
    belongs_to :term, :class_name => "Term", :foreign_key => "term_id"
    belongs_to :day, :class_name => "Day", :foreign_key => "day_id"
    belongs_to :location, :class_name => "Location", :foreign_key => "location_id"
    has_many :attendees, :class_name => "Attendee", :dependent => :destroy
    has_many :students, :class_name => "Person", :through => :attendees
end

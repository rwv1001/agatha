class Lecture < ActiveRecord::Base
    belongs_to :person
    belongs_to :course
    belongs_to :term, :class_name => "Term", :foreign_key => "term"
    belongs_to :day, :class_name => "Day", :foreign_key => "day"
    has_many :attendees, :dependent => :destroy
end

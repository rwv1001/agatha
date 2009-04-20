class Attendee < ActiveRecord::Base
    belongs_to :person,  :class_name => "Person", :foreign_key => "person_id"
    belongs_to :lecture,  :class_name => "Lecture", :foreign_key => "lecture_id"
end

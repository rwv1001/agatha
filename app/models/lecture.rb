class Lecture < ActiveRecord::Base
    belongs_to :person
    belongs_to :course
    has_many :attendees
end

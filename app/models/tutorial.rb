class Tutorial < ActiveRecord::Base
  belongs_to :tutorial_attendee, :class_name => "Person", :foreign_key => "person_id"
  belongs_to :tutorial_schedule, :class_name => "TutorialSchedule", :foreign_key => "tutorial_schedule_id"
end

class Attendee < ActiveRecord::Base
    belongs_to :person
    belongs_to :lecture
end

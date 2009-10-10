class GroupAttendee < ActiveRecord::Base
  ExtendedFilters = [
  ];
  USER_WHERE_STR = "";
    belongs_to :attendee,  :class_name => "Attendee", :foreign_key => "attendee_id"
  belongs_to :group, :class_name => "Group", :foreign_key => "group_id"
end

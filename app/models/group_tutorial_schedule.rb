class GroupTutorialSchedule < ActiveRecord::Base
   ExtendedFilters = [];USER_WHERE_STR = "";
  belongs_to :tutorial_schedule,  :class_name => "TutorialSchedule", :foreign_key => "tutorial_schedule_id"
  belongs_to :group, :class_name => "Group", :foreign_key => "group_id"
end

class GroupDay < ActiveRecord::Base
  ExtendedFilters = [];USER_WHERE_STR = "";
    belongs_to :day,  :class_name => "Day", :foreign_key => "day_id"
  belongs_to :group, :class_name => "Group", :foreign_key => "group_id"
end

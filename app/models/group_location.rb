class GroupLocation < ActiveRecord::Base
  ExtendedFilters = [];USER_WHERE_STR = "";
    belongs_to :location,  :class_name => "Location", :foreign_key => "location_id"
  belongs_to :group, :class_name => "Group", :foreign_key => "group_id"
end

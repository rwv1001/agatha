class GroupWillingLecturer < ActiveRecord::Base
    ExtendedFilters = [];USER_WHERE_STR = "";
    belongs_to :willing_lecturer,  :class_name => "WillingLecturer", :foreign_key => "willing_lecturer_id"
  belongs_to :group, :class_name => "Group", :foreign_key => "group_id"
end

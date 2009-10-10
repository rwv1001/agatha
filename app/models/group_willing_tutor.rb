class GroupWillingTutor < ActiveRecord::Base
      ExtendedFilters = [];USER_WHERE_STR = "";
    belongs_to :willing_tutor,  :class_name => "WillingTutor", :foreign_key => "willing_tutor_id"
  belongs_to :group, :class_name => "Group", :foreign_key => "group_id"
end

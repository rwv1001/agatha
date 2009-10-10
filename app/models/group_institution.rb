class GroupInstitution < ActiveRecord::Base
    ExtendedFilters = [];USER_WHERE_STR = "";
     belongs_to :institution,  :class_name => "Institution", :foreign_key => "institution_id"
  belongs_to :group, :class_name => "Group", :foreign_key => "group_id"
end

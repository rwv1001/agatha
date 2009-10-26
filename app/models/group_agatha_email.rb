class GroupAgathaEmail < ActiveRecord::Base
  ExtendedFilters = [];USER_WHERE_STR = "";
      belongs_to :agatha_email,  :class_name => "AgathaEmail", :foreign_key => "agatha_email_id"
  belongs_to :group, :class_name => "Group", :foreign_key => "group_id"
end

class GroupEmailTemplate < ActiveRecord::Base
  ExtendedFilters = [];USER_WHERE_STR = "";
  belongs_to :email_template,  :class_name => "EmailTemplate", :foreign_key => "email_template_id"
  belongs_to :group, :class_name => "Group", :foreign_key => "group_id"
end

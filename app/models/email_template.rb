class EmailTemplate < ActiveRecord::Base
   ExtendedFilters = [];USER_WHERE_STR = "";

      has_many :group_email_templates, :class_name => "GroupEmailTemplate", :dependent => :destroy

end

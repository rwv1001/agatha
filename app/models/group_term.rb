class GroupTerm < ActiveRecord::Base
  ExtendedFilters = [];USER_WHERE_STR = "";
    belongs_to :term,  :class_name => "Term", :foreign_key => "term_id"
  belongs_to :group, :class_name => "Group", :foreign_key => "group_id"
end

class GroupTutorial < ActiveRecord::Base
     ExtendedFilters = [];
  USER_WHERE_STR = "";
    belongs_to :tutorial,  :class_name => "Tutorial", :foreign_key => "tutorial_id"
  belongs_to :group, :class_name => "Group", :foreign_key => "group_id"
end

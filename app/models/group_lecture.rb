class GroupLecture < ActiveRecord::Base
  ExtendedFilters = [];USER_WHERE_STR = "";
  belongs_to :lecture,  :class_name => "Lecture", :foreign_key => "lecture_id"
  belongs_to :group, :class_name => "Group", :foreign_key => "group_id"
end

class GroupCourse < ActiveRecord::Base
  ExtendedFilters = [];USER_WHERE_STR = "";
  belongs_to :course,  :class_name => "Course", :foreign_key => "course_id"
  belongs_to :group, :class_name => "Group", :foreign_key => "group_id"
end

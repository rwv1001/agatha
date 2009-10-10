class WillingLecturer < ActiveRecord::Base
   ExtendedFilters = [];USER_WHERE_STR = "";
     belongs_to :course, :class_name => "Course", :foreign_key => "course_id"
  belongs_to :lecturer, :class_name => "Person", :foreign_key => "person_id"
end

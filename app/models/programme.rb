class Programme < ActiveRecord::Base
  has_many :pcourses
  has_many :student_programmes
end

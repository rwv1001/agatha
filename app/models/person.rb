class Person < ActiveRecord::Base
  has_many :student_courses
  has_many :student_programmes
  has_many :lectures
end

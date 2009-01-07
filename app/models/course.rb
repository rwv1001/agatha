class Course < ActiveRecord::Base
  TERMS = [
      ["Michaelmas",0],
      ["Hilary",1],
      ["Trinity",2]]
      
  TERM_NAMES = [ "Michaelmas", "Hilary", "Trinity" ]

  has_many :student_courses
  has_many :pcourses
  has_many :lectures
end

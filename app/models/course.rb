class Course < ActiveRecord::Base
  TERMS = [
      ["Michaelmas", 1],
      ["Hilary", 2 ],
      ["Trinity", 3 ]]
      
  TERM_NAMES = [ "Michaelmas", "Hilary", "Trinity" ]

  has_many :student_courses
  has_many :pcourses
  has_many :lectures
end

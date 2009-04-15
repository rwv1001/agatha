class Person < ActiveRecord::Base

SortString = [ "Sort by Second Name", "Sort by First Name", "Sort by Entry Year" ]
SortHash = {'Sort by Second Name' => 0 , 'Sort by First Name' =>1, 'Sort by Entry Year'=>2}
SortOrder =['second_name asc, entry_year asc', 'first_name asc, entry_year asc', 'entry_year asc, second_name asc']

  has_many :student_courses
  has_many :student_programmes
  has_many :lectures,  :dependent => :destroy
  has_many :attendees, :dependent => :destroy

  has_many :group_members, :dependent => :destroy
  has_many :groups, :through => :group_members
 
end

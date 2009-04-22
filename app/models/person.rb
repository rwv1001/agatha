class Person < ActiveRecord::Base

SortString = [ "Sort by Second Name", "Sort by First Name", "Sort by Entry Year" ]
SortHash = {'Sort by Second Name' => 0 , 'Sort by First Name' =>1, 'Sort by Entry Year'=>2}
SortOrder =['second_name asc, entry_year asc', 'first_name asc, entry_year asc', 'entry_year asc, second_name asc']


  has_many :tutorial_schedules, :class_name =>"TutorialSchedule", :dependent => :destroy
  has_many :tutorial_attendees, :class_name => "Tutorial", :dependent => :destroy
  has_many :lecture_schedules, :class_name =>"Lecture",  :dependent => :destroy
  has_many :attendees, :class_name => "Attendee", :dependent => :destroy
  has_many :group_members, :class_name => "GroupMember", :dependent => :destroy

  belongs_to :institution, :class_name => "Institution", :foreign_key => "institution_id"
  belongs_to :religious_house, :class_name => "Institution", :foreign_key => "religious_house_id"

  has_many :groups, :class_name => "Group", :through => :group_members
  has_many :lectures, :class_name => "Lecture", :through => :attendees
  has_many :tutorial_schedules, :class_name => "TutorialSchedule", :through => :tutorial_attendees
  
end

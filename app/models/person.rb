class Person < ActiveRecord::Base

@@class_name ||= "Person"
def class_name
  return @@class_name
end
def self.set_controller(search_controller_)
  @@search_controller = search_controller_
end

def search_controller
  return @@search_controller
end



USER_WHERE_STR = "";
  


  has_many :tutorial_schedules, :class_name =>"TutorialSchedule", :dependent => :destroy
  has_many :tutorial_attendees, :class_name => "Tutorial", :dependent => :destroy
  has_many :lecture_schedules, :class_name =>"Lecture",  :dependent => :destroy
  has_many :attendees, :class_name => "Attendee", :dependent => :destroy
  has_many :group_people, :class_name => "GroupPerson", :dependent => :destroy
  has_many :users, :class_name => "User", :dependent => :destroy


  belongs_to :entry_term, :class_name => "Term", :foreign_key => "entry_term_id"
  belongs_to :institution, :class_name => "Institution", :foreign_key => "institution_id"
  belongs_to :religious_house, :class_name => "Institution", :foreign_key => "religious_house_id"

  has_many :groups, :class_name => "Group", :through => :group_people
  has_many :lectures, :class_name => "Lecture", :through => :attendees  do
    def term_lecture_hours(term_id)
      term_lectures = find :all, :conditions => ['term_id = ?' , term_id]
      hours = 0;
      for l in term_lectures
        hours = hours + l.hours;
      end
      return hours
    end
    def term_lecture_number(term_id)
      term_lectures = find :all, :conditions => ['term_id = ?' , term_id]
      return term_lectures.length
    end
  end







  has_many :tutorial_schedules, :class_name => "TutorialSchedule", :through => :tutorial_attendees

end

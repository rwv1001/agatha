class AgathaEmail < ActiveRecord::Base
     ExtendedFilters = [];USER_WHERE_STR = "";
      belongs_to :person,  :class_name => "Person", :foreign_key => "person_id"
      belongs_to :email_template, :class_name => "EmailTemplate", :foreign_key => "email_template_id"
      belongs_to :term, :class_name => "Term", :foreign_key => "term_id"
      belongs_to :course, :class_name => "Course", :foreign_key => "course_id"

      has_many :group_agatha_emails, :class_name => "GroupAgathaEmail", :dependent => :destroy
end

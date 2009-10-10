class MaximumTutorial < ActiveRecord::Base
    ExtendedFilters = [];USER_WHERE_STR = "";
    belongs_to :term,  :class_name => "Term", :foreign_key => "term_id"
  belongs_to :tutor, :class_name => "Person", :foreign_key => "person_id"
end

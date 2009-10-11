class AgathaEmail < ActiveRecord::Base
     ExtendedFilters = [];USER_WHERE_STR = "";
      belongs_to :person,  :class_name => "Person", :foreign_key => "person_id"
end

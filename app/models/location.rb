class Location < ActiveRecord::Base
   ExtendedFilters = [];USER_WHERE_STR = "";
  has_many :lectures, :class_name => "Lecture", :dependent => :destroy
end

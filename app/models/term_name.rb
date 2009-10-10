class TermName < ActiveRecord::Base
  ExtendedFilters = [];USER_WHERE_STR = "";
  has_many :terms, :class_name => "Term", :dependent => :destroy
end

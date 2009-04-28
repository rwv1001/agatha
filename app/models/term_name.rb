class TermName < ActiveRecord::Base
  has_many :terms, :class_name => "Term", :dependent => :destroy
end

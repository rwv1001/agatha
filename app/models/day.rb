class Day < ActiveRecord::Base
  has_many :lectures, :class_name => "Lecture", :dependent => :destroy
end

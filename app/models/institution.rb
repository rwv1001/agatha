class Institution < ActiveRecord::Base
  has_many :people, :class_name => "Person", :dependent => :destroy
end

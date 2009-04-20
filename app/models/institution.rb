class Institution < ActiveRecord::Base
  has_many :people, :dependent => :nullify
end

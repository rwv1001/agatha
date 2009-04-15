class Term < ActiveRecord::Base
  has_many :lectures, :dependent => :destroy
end

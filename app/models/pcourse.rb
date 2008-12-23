class Pcourse < ActiveRecord::Base
    belongs_to :programme
    belongs_to :course
end

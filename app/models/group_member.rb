class GroupMember < ActiveRecord::Base
  belongs_to :person,  :class_name => "Person", :foreign_key => "person_id"
  belongs_to :group, :class_name => "Group", :foreign_key => "group_id"
end

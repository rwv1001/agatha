

class Group < ActiveRecord::Base
has_many :group_members, :dependent => :destroy
has_many :people, :through => :group_members
  def group_list_strings  
   
    create_group_list 
  
    return @group_list_strings;
    
  end

  def group_list_ids
    
      create_group_list;
   
    return @group_list_ids;
  end
  
  private
  def create_group_list
    @group_list_strings = ['Select...'];
    @group_list_ids = [0];
    groups = Group.find(:all,:order => 'group_name asc');
    for group in groups
      @group_list_strings << group.group_name;
      @group_list_ids << group.id;
    end
    @group_list_defined = true;
  end

end

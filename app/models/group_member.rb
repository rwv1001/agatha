class GroupMember
  attr_reader :name;
  attr_reader :id;
  def initialize(name, id)
 #   RAILS_DEFAULT_LOGGER.error( "new GroupMember" );
    @name =name;
    @id = id;
  end
end
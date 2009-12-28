class ForeignFilter
  attr_reader :foreign_key
  attr_reader :attribute_name


  def initialize(foreign_key_, attribute_name_)
  #  RAILS_DEFAULT_LOGGER.error( "new ForeignFilter" );
    @foreign_key = foreign_key_;
    @attribute_name = attribute_name_;   
  end

end
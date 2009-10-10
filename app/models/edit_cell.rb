class EditCell
  attr_reader :current_object;
    attr_reader :attribute
    attr_reader :filter_controller
    attr_reader :table_name
    attr_reader :update_parent;
     def initialize(attribute, current_object, table_name, filter_controller,update_parent );
       @current_object = current_object
       @attribute = attribute
       @filter_controller = filter_controller
       @table_name = table_name
       @update_parent =update_parent
     end
end
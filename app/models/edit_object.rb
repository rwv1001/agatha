class EditObject
  attr_reader :current_object;
    attr_reader :attribute_list
    attr_reader :filter_controller
    attr_reader :table_name
     def initialize(current_object, attribute_list, filter_controller, table_name)
       @current_object = current_object
       @attribute_list = attribute_list
       @filter_controller = filter_controller
       @table_name = table_name
     end
end

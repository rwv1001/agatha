class AttributeElement
  attr_reader :foreign_key
  attr_reader :data_type
  attr_reader :name
  attr_reader :table_name

  def initialize(name_, data_type_, table_name_)
    @name = name_
    @data_type = data_type_
    @table_name = table_name_
  end
end
class ReflectionElement
  attr_reader :name
  attr_reader :foreign_key
  def initialize(name_, foreign_key_)
    @name = name_
    @foreign_key =foreign_key_
  end
end
class AttributeList
  attr_reader :attribute_elements 
  attr_reader :reflections

  def initialize(table_name_)
    string_to_evaluate = "#{table_name_}.reflect_on_all_associations(:belongs_to)"
    reflections = eval(string_to_evaluate);
    reflection_keys = [];
    @reflection_names = [];
    @reflections = [];
    @attribute_elements  = [];
    for reflection in reflections
       class_name = reflection.class_name;
       foreign_key = reflection.options[:foreign_key];
       @reflections  << ReflectionElement.new(reflection.class_name, reflection.options[:foreign_key])
       reflection_keys << reflection.options[:foreign_key];
    end
    attribute_eval_str = "#{table_name_}.columns"
    attributes = eval(attribute_eval_str)
    for attribute in attributes
       ind = reflection_keys.index(attribute.name)
       if(ind == nil)
           attribute_element = AttributeElement.new(attribute.name, attribute.type, "");
       else
           attribute_element = AttributeElement.new(attribute.name, attribute.type, reflections[ind].name);
       end
       @attribute_elements << attribute_element
    end
  end
end

class Institution < ActiveRecord::Base
   ExtendedFilters = [
     ExtendedFilter.new(:external_filter, ExternalFilter.new("Institution", #class_name
      "Institutions in group", #header
      "(SELECT COUNT(*) FROM group_institutions b1 WHERE b1.institution_id = a0.id AND b1.group_id = arg_value)>0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(false,\"asc\", false, \"\", \"a0.table_name ='institutions' AND (a0.owner_id = user_id_ OR administrator_ OR ((SELECT COUNT(*) FROM group_users a2 WHERE a2.user_id = user_id_ AND a2.group_id = a0.readers_id) > 0 AND a0.private = FALSE) )\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false#group_selector_
      )),
  ExtendedFilter.new(:external_filter, ExternalFilter.new("Institution", #class_name
      "Institutions not in group", #header
      "(SELECT COUNT(*) FROM group_institutions b1 WHERE b1.institution_id = a0.id AND b1.group_id = arg_value)=0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(false,\"asc\", false, \"\", \"a0.table_name ='institutions' AND (a0.owner_id = user_id_ OR administrator_ OR ((SELECT COUNT(*) FROM group_users a2 WHERE a2.user_id = user_id_ AND a2.group_id = a0.readers_id) > 0 AND a0.private = FALSE) )\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false#group_selector_

    )),
       ExtendedFilter.new(:external_filter, ExternalFilter.new("Institution", #class_name
      "Institutions in some group", #header
      "(SELECT COUNT(*) FROM group_institutions b1 WHERE b1.institution_id = a0.id)>0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "[]", #argument_selector_str_
      false,#allow_multiple_arguments
      false#group_selector_
      )),
           ExtendedFilter.new(:external_filter, ExternalFilter.new("Institution", #class_name
      "Institutions not in any group", #header
      "(SELECT COUNT(*) FROM group_institutions b1 WHERE b1.institution_id = a0.id)=0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "[]", #argument_selector_str_
      false,#allow_multiple_arguments
      false#group_selector_
      ))
  ];USER_WHERE_STR = "";
  has_many :institutions, :class_name => "Institution", :dependent => :destroy
end

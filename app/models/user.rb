require 'digest/sha1'


class User < ActiveRecord::Base
  ExtendedFilters = [
       ExtendedFilter.new(:external_filter, ExternalFilter.new("User", #class_name
      "Users in group", #header
      "(SELECT COUNT(*) FROM group_users b1 WHERE b1.user_id = a0.id AND b1.group_id = arg_value)>0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(false,\"asc\", false, \"\", \"a0.table_name ='users' AND (a0.owner_id = user_id_ OR administrator_ OR ((SELECT COUNT(*) FROM group_users a2 WHERE a2.user_id = user_id_ AND a2.group_id = a0.readers_id) > 0 AND a0.private = FALSE) )\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false#group_selector_
      )),
  ExtendedFilter.new(:external_filter, ExternalFilter.new("User", #class_name
      "Users not in group", #header
      "(SELECT COUNT(*) FROM group_users b1 WHERE b1.user_id = a0.id AND b1.group_id = arg_value)=0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "@class_search_controller.GetAllShortFieldsWhere(false,\"asc\", false, \"\", \"a0.table_name ='users' AND (a0.owner_id = user_id_ OR administrator_ OR ((SELECT COUNT(*) FROM group_users a2 WHERE a2.user_id = user_id_ AND a2.group_id = a0.readers_id) > 0 AND a0.private = FALSE) )\")", #argument_selector_str_
      true,#allow_multiple_arguments
      false#group_selector_

    )),
       ExtendedFilter.new(:external_filter, ExternalFilter.new("User", #class_name
      "Users in some group", #header
      "(SELECT COUNT(*) FROM group_users b1 WHERE b1.user_id = a0.id)>0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "[]", #argument_selector_str_
      false,#allow_multiple_arguments
      false#group_selector_
      )),
      ExtendedFilter.new(:external_filter, ExternalFilter.new("User", #class_name
      "Users not in any group", #header
      "(SELECT COUNT(*) FROM group_users b1 WHERE b1.user_id = a0.id)=0", #where_str_
      "Group",#argument_class_
      "",#group_class_
      "[]", #argument_selector_str_
      false,#allow_multiple_arguments
      false#group_selector_
      ))
  ];USER_WHERE_STR = "";
  has_many :display_filters, :class_name => "DisplayFilter", :dependent => :destroy
  has_many :format_elements, :class_name => "FormatElement", :dependent => :destroy
  has_many :group_users, :class_name => "GroupUser", :dependent => :destroy
  has_many :groups, :class_name=>"Group"
  has_many :open_records, :class_name => "OpenRecord", :dependent => :destroy
  belongs_to :person, :class_name => "Person", :foreign_key => "person_id"

  validates_presence_of     :name
  validates_uniqueness_of   :name
 
  attr_accessor :password_confirmation
  validates_confirmation_of :password
  attr_accessor :old_password

  validate :password_non_blank
  

  
  def self.authenticate(name, password)
    user = self.find_by_name(name)
    if user && name
      expected_password = encrypted_password(password, user.salt)
      if user.hashed_password != expected_password
        user = nil
      end
    end
    user
  end
  
  
  # 'password' is a virtual attribute
  
  def password
    @password
  end
  
  def password=(pwd)
    @password = pwd
    return if pwd.blank?
    create_new_salt
    self.hashed_password = User.encrypted_password(self.password, self.salt)
  end
  
  def after_destroy
    if User.count.zero?
      raise "Can't delete last user"
    end
  end     
  

private

  def password_non_blank
    errors.add(:password, "Missing password") if hashed_password.blank?
  end

  
  
  def create_new_salt
    self.salt = self.object_id.to_s + rand.to_s
  end
  
  
  
  def self.encrypted_password(password, salt)
    string_to_hash = password + "wibble" + salt
    Digest::SHA1.hexdigest(string_to_hash)
  end
  

end



class AddWarnings < ActiveRecord::Migration
  def self.up
    add_column :email_templates, :global_warnings, :text, :default => ""
    add_column :email_templates, :personal_warnings, :text, :default => ""
  end

  def self.down
    remove_column :email_templates, :global_warnings
    remove_column :email_templates, :personal_warnings
  end
end

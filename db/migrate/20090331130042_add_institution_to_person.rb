class AddInstitutionToPerson < ActiveRecord::Migration
  def self.up
    add_column :people, :institution, :integer
  end

  def self.down
    remove_column :people, :institution
  end
end

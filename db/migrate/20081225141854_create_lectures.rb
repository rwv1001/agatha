require "migration_helpers"
class CreateLectures < ActiveRecord::Migration
   extend MigrationHelpers  
   def self.up
    create_table :lectures do |t|
      t.integer :course_id, :null => false
      t.integer :person_id, :null => false
      t.integer :term
      t.integer :year
      t.text :day
      t.text :hour
      t.text :exam

      t.timestamps
    end


  end

  def self.down
    drop_table :lectures
  end
end

class CreatePcourses < ActiveRecord::Migration
  def self.up
    create_table :pcourses do |t|
      t.integer :course_id, :null => false
      t.integer :programme_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :pcourses
  end
end

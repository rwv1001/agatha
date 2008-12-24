class CreateStudentProgrammes < ActiveRecord::Migration
  def self.up
    create_table :student_programmes do |t|
      t.integer :person_id, :null => false
      t.integer :programme_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :student_programmes
  end
end

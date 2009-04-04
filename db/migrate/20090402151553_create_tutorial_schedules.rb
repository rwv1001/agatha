class CreateTutorialSchedules < ActiveRecord::Migration
  def self.up
    create_table :tutorial_schedules do |t|
      t.integer :person_id
      t.integer :course_id
      t.integer :term_id
      t.integer :total_tutorials
      t.integer :status

      t.timestamps
    end
  end

  def self.down
    drop_table :tutorial_schedules
  end
end

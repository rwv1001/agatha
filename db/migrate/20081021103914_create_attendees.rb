class CreateAttendees < ActiveRecord::Migration
  def self.up
    create_table :attendees do |t|
      t.integer :lecture_id, :null => false
      t.integer :person_id, :null => false
      t.boolean :examined

      t.timestamps
    end
  end

  def self.down
    drop_table :attendees
  end
end

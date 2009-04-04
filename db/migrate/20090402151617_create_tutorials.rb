class CreateTutorials < ActiveRecord::Migration
  def self.up
    create_table :tutorials do |t|
      t.integer :person_id
      t.integer :tutorial_id
      t.integer :number_of_tutorials
      t.integer :hours
      t.text :comment
      t.integer :mark
      t.integer :mark_type

      t.timestamps
    end
  end

  def self.down
    drop_table :tutorials
  end
end

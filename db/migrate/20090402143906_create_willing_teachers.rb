class CreateWillingTeachers < ActiveRecord::Migration
  def self.up
    create_table :willing_teachers do |t|
      t.integer :person_id
      t.integer :course_id
      t.integer :order_of_preference
      t.boolean :can_lecture
      t.boolean :can_tutor
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :willing_teachers
  end
end

class RenameStudentIdToPersonId < ActiveRecord::Migration
  def self.up
    rename_column :student_courses, :student_id, :person_id
  end

  def self.down
    rename_column :student_courses, :person_id, :student_id
  end
end

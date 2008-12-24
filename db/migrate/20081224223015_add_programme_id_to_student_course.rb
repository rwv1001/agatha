class AddProgrammeIdToStudentCourse < ActiveRecord::Migration
  def self.up
    add_column :student_courses, :programme_id, :integer
  end

  def self.down
    remove_column :student_courses, :programme_id
  end
end

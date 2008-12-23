class CreateStudentCourses < ActiveRecord::Migration
  def self.up
    create_table :student_courses do |t|
      t.integer :student_id, :null=>false, :options=>
        'references people(id)'
      t.integer :course_id, :null=>false, :options=>
        'references courses(id)'
      t.integer :term
      t.integer :year
      t.string :grade
      t.timestamps
    end
  end

  def self.down
    drop_table :student_courses
  end
end

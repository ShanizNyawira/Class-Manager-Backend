class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.integer :course_code
      t.string :course_description
      t.integer :teacher_id
      t.integer :student_id

      t.timestamps
    end
  end
end

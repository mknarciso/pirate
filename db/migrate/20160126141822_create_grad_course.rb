class CreateGradCourse < ActiveRecord::Migration
  def change
    create_table :grad_courses do |t|
      t.integer :grad_id
      t.integer :course_id
      t.integer :semester
      t.timestamps
    end
  end
end

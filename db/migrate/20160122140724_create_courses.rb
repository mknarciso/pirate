class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :min
      t.integer :max

      t.timestamps null: false
    end
  end
end

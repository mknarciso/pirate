class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.integer :course_id
      t.integer :requirement_id
      t.timestamps
    end
  end
end

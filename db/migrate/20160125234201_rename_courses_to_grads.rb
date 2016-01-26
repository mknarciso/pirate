class RenameCoursesToGrads < ActiveRecord::Migration
  def change
    rename_table :courses, :grads
  end
end

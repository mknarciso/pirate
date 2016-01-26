class RenameChairsToCourses < ActiveRecord::Migration
  def change
    rename_table :chairs, :courses
  end
end

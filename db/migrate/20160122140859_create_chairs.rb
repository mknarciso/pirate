class CreateChairs < ActiveRecord::Migration
  def change
    create_table :chairs do |t|
      t.string :name
      t.integer :hours
      t.text :desc

      t.timestamps null: false
    end
  end
end

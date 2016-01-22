class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :city
      t.boolean :public
      t.string :website

      t.timestamps null: false
    end
  end
end

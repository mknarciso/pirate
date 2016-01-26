class CreateFaccur < ActiveRecord::Migration
  def change
    create_table :faccurs do |t|
      t.integer :fac
      t.integer :cur
      t.timestamps
    end
  end
end

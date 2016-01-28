class AddSchoolIdToGrads < ActiveRecord::Migration
  def change
    add_column :grads, :school_id, :integer
  end
end

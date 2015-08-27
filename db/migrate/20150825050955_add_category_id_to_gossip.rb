class AddCategoryIdToGossip < ActiveRecord::Migration
  def change
    add_column :gossips, :category_id, :integer
  end
end

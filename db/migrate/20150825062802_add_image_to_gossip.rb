class AddImageToGossip < ActiveRecord::Migration
  def change
    add_column :gossips,:image,:string
  end
end

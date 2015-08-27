class AddTypeFieldToBeautyAndSex < ActiveRecord::Migration
  def change
    add_column :beauty_and_sexes, :category_id, :integer
    add_column :beauty_and_sexes, :beauty_and_sex_type, :string
  end
end

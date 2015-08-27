class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :description, :name

      t.timestamps null: false
    end
  end
end

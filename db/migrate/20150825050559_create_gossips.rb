class CreateGossips < ActiveRecord::Migration
  def change
    create_table :gossips do |t|
      t.string :heading
      t.text :description
      t.string :author

      t.timestamps null: false
    end
  end
end

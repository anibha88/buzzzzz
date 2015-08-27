class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :heading
      t.text :description
      t.string :author

      t.timestamps null: false
    end
  end
end

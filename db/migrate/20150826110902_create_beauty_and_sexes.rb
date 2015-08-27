class CreateBeautyAndSexes < ActiveRecord::Migration
  def change
    create_table :beauty_and_sexes do |t|
      t.string :tip_name
      t.text :tip_description
      t.string :tip_author
      t.string :image
      t.string :tip_related_to

      t.timestamps null: false
    end
  end
end

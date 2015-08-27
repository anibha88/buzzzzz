class AddNewsTypeToNews < ActiveRecord::Migration
  def change
  	add_column :news, :news_type, :string
  end
end

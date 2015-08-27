class CreateInternationalNews < ActiveRecord::Migration
  def change
    create_table :international_news do |t|

      t.timestamps null: false
    end
  end
end

class CreateNationalNews < ActiveRecord::Migration
  def change
    create_table :national_news do |t|

      t.timestamps null: false
    end
  end
end

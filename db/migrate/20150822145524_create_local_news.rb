class CreateLocalNews < ActiveRecord::Migration
  def change
    create_table :local_news do |t|

      t.timestamps null: false
    end
  end
end

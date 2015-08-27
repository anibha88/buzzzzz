class CreateTeenHealths < ActiveRecord::Migration
  def change
    create_table :teen_healths do |t|

      t.timestamps null: false
    end
  end
end

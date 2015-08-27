class AddFileUpload < ActiveRecord::Migration
    def up
      add_attachment :gossips, :image
    end

    def down
      add_attachment :gossips, :image
    end
end

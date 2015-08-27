class AddGossipTypeToGossip < ActiveRecord::Migration
  def change
    add_column :gossips, :gossip_type, :string
  end
end

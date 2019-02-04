class AddIndexToGossip < ActiveRecord::Migration[5.2]
  def change
    add_reference :gossips, :user, foreign_key: true
    add_reference :gossip_tags, :gossip, foreign_key: true
    add_reference :gossip_tags, :tag, foreign_key: true
  end
end

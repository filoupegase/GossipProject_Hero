class CreateGossipTags < ActiveRecord::Migration[5.2]
  def change
    create_table :gossip_tags do |t|

      t.timestamps
    end
  end
end

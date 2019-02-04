class Tag < ApplicationRecord
  has_many :gossip_tags
  has_many :tags , through: :gossip_tags
  validates :title,
presence: true
end

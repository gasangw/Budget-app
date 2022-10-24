class Entity < ApplicationRecord
  belongs_to :user
  has_many :entity_groups
  has_many :groups, through: :entity_groups

  validate :name, presence: true, length: { minimum: 3 }
  validate :amount, numericality: { greater_than_or_equal_to: 0 }
end

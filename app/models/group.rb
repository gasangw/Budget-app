class Group < ApplicationRecord
  belongs_to :user
  has_many :entity_groups
  has_many :entities, through: :entity_groups

  validate :name, presence: true, length: { minimum: 3 }

end

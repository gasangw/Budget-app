class Entity < ApplicationRecord
  belongs_to :user
  belongs_to :group

  validates :name, presence: true, length: { minimum: 3 }
  validates :amount, numericality: { greater_than_or_equal_to: 0 }
end

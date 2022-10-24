# frozen_string_literal: true

class User < ApplicationRecord
  has_many :entities
  has_many :groups

  validate :name, presence: true, length: { minimum: 2 }
end

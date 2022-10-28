class Group < ApplicationRecord
  # mount_uploader :icon, IconUploader
  belongs_to :user
  has_many :entities, dependent: :destroy
  
  # has_one_attached :image

  validates :name, presence: true, length: { minimum: 3 }
end

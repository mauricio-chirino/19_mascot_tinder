class Pet < ApplicationRecord
  belongs_to :user
  has_many :matches
  has_many :images, as: :imagenable
end

class Pet < ApplicationRecord
  belongs_to :user
  has_many :matches
  # has_many :images, as: :imagenable
  # se configura para tener imagenes como archivos adjuntos
  has_many_attached :images
end

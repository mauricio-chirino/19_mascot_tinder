class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :pets
  has_many :matches
  has_many :images, as: :imagenable

  # tenemos que permitir crear una Image al momento de crear un usuario
  accepts_nested_attributes_for :images
end

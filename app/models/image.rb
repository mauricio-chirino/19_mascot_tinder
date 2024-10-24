class Image < ApplicationRecord
  belongs_to :imagenable, polymorphic: true
end

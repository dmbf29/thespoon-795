class Review < ApplicationRecord
  belongs_to :restaurant # instance.restaurant
  validates :content, presence: true
end

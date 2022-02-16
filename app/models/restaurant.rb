class Restaurant < ApplicationRecord
  # associations
  has_many :reviews
  # validations
  validates :name, presence: true
end

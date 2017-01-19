class Department < ApplicationRecord
  has_many :products

  validates :name, length: {maximum: 30}, presence: true
  validates :description, length: {maximum: 1000}
end

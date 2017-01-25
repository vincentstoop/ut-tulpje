class Product < ApplicationRecord
  belongs_to :department
  has_many :photos, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true, length: {maximum: 100}

  def has_photo?
    photo.present?
  end
end

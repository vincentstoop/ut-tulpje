class Product < ApplicationRecord
  belongs_to :department
  has_many :photos

  def has_photo?
    photo.present?
  end

end

class Product < ApplicationRecord
  belongs_to :department
  has_one :profile

  def has_photo?
    photo.present?
  end

end

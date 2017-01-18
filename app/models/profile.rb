class Profile < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :street_name, presence: true
  validates :house_number, presence: true
  validates :zip_code, presence: true
  validates :city, presence: true

  def full_name
    if prefix.nil?
      "#{first_name} #{last_name}"
    else
      "#{first_name} #{prefix} #{last_name}"
    end
  end
end

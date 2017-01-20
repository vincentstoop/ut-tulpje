require 'rails_helper'

RSpec.describe Photo, type: :model do
describe "validations" do

  it "is invalid without an image" do
    photo = Photo.new(image: [])
    photo.valid?
    expect(photo.errors).to have_key(:image)
  end
end
end

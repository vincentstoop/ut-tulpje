require 'rails_helper'

RSpec.describe Profile, :type => :model do
  describe "validations" do
  # it "is valid with valid attributes" do
  #   expect(Profile.new).to be_valid
  # end

    it "is invalid without a first name" do
      profile = Profile.new(first_name: "")
      profile.valid?
      expect(profile.errors).to have_key(:first_name)
    end

    it "is invalid without a last name" do
      profile = Profile.new(last_name: "")
      profile.valid?
      expect(profile.errors).to have_key(:last_name)
    end

    it "is invalid without a street name" do
      profile = Profile.new(street_name: "")
      profile.valid?
      expect(profile.errors).to have_key(:street_name)
    end

    it "is invalid without a house number" do
      profile = Profile.new(house_number: "")
      profile.valid?
      expect(profile.errors).to have_key(:house_number)
    end

    it "is invalid without a zip code" do
      profile = Profile.new(zip_code: "")
      profile.valid?
      expect(profile.errors).to have_key(:zip_code)
    end

    it "is invalid without a city" do
      profile = Profile.new(city: "")
      profile.valid?
      expect(profile.errors).to have_key(:city)
    end
    
  end
end
#   it "is not valid without a first name"
#   it "is not valid without a last name"
#   it "is not valid without a street name"
#   it "is not valid without a house number"
#   it "is not valid without a zip code"
#   it "is not valid without a city"
# end

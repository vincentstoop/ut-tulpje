require 'rails_helper'

RSpec.describe Department, type: :model do
  describe "validations" do
    it "is invalid with an empty name" do
      department = Department.new(name: "")
      department.valid?
      expect(department.errors).to have_key(:name)
    end

    it "is invalid with a name longer than 30 characters"
    it "is invalid with a description longer than 1000 characters"
    it "is valid with an empty description"
    it "lists all articles within the department"

  end
end

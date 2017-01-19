require 'rails_helper'

describe "User viewing the list of departments" do

  let!(:dep1) { create :department, name: "Listing Name 1"}
  let!(:dep2) { create :department, name: "Listing Name 2"}
  let!(:dep3) { create :department, name: "Listing Name 3"}

  it "shows all departments" do
    visit departments_url

    expect(page).to have_text("Listing Name 1")
    expect(page).to have_text("Listing Name 2")
    expect(page).to have_text("Listing Name 3")
  end
end

require 'rails_helper'

describe "Viewing an individual department" do
  let(:user) { create :user }
  let(:department) { create :department, user: user }

  it "shows the department's details" do
    visit department_url(department)

    expect(page).to have_text(department.name)
    expect(page).to have_text(department.description)
  end
end

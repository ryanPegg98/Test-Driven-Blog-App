require "rails_helper"

RSpec.feature "Deleting an Article" do
  scenario "A user deletes and article" do
    skip "This will be created later"
    visit "/"

    expect(page).to have_content("RYAN IS THE BEST")
  end
end

require "rails_helper"

RSpec.feature "Creating Articles" do
  scenario "A user creates a new article" do
    visit "/"

    click_link "New Article"
    article_title = "Creating a blog"
    fill_in "Title", with: article_title
    fill_in "Body", with: "Lorem Ipsum"

    click_button "Create Article"

    expect(page).to have_content("Article has been created")
    expect(page).to have_content(article_title )
    expect(page.current_path).to eq(articles_path)
  end

  scenario "A user doesn't enter a title" do
    visit "/"

    click_link "New Article"

    fill_in "Body", with: "Lorem Ipsum"

    click_button "Create Article"

    expect(page).to have_content("New Article")
    expect(page).to have_content("Title can't be blank")
  end
end

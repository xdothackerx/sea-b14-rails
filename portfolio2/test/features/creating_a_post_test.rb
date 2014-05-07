require "test_helper"

feature "CreatingAPost" do
  scenario "submit form data to create a new post" do
    # Given a completed new post form
    visit new_post_path
    fill_in "Title", with: "Code Rails"
    fill_in "Body", with: "This is how I learned to make Rails apps."
    # When I submit the form
    click_on "Create Post"
    # Then the new post should be created and displayed
    page.text.must_include "Post was successfully created"
    page.text.must_include "how I learned to make Rails apps"
  end
end

require "test_helper"

feature "EditingAPost" do
  scenario "editing an existing post" do
    # Given a post already exists
      post = Post.create(title: "Becoming a Code Fellow", body: "Means striving for excellence.")
      visit posts_path(post)
    # When "Edit" is clicked and changed data is submitted
    click_on "Edit"
    fill_in "Title", with: "Becoming a Web Developer"
    click_on "Update Post"
    # Then the post is updated
    page.text.must_include "Post was successfully updated"
    page.text.must_include "Web Developer"
  end
end

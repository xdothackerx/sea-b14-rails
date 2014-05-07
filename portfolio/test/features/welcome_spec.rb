require "test_helper"

describe "portfolio app welcome page" do
  it "shows Welcome index view" do
    visit "http://localhost:3000"
    page.text.must_include "hire me"
  end
end

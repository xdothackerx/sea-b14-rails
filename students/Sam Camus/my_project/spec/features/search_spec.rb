require "spec_helper"

describe  "Search page" do 
	it "has a result" do
		visit "http://www.google.com"
		fill_in "q", with: "dogs"
		click_on "Google Search"
		page.text.must_include "en.wikipedia.org"
		page.text.must_include "FUNNY DOGS"
	end
end
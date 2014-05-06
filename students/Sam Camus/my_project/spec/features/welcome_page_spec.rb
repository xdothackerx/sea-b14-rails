require "spec_helper"

describe "A local webpage" do
	it "has a welcome headline" do
		visit "file:///home/sam/Codefellows/sea-b14-rails/students/Sam%20Camus/my_project/public/index.html"
		page.text.must_include "Welcome aboard"
	end
end
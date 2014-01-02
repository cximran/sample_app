require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
    it "should have title 'Home' " do
      visit '/static_pages/home'
      expect(page).to have_title("Home")
    end
  describe "Help Page" do
  it "should have the content 'This is the Help page'" do
  	visit '/static_pages/help'
  	expect(page).to have_content('Help Page here!')
 	 end
  end
describe "About Page" do 
	it "should have the content 'About Us'" do
		visit '/static_pages/about'
expect(page).to have_content ('About Us')
end
end
end
end
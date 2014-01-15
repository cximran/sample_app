require 'spec_helper'

describe "Static pages" do
 let(:base_title) {"Ruby on Rails Tutorial Sample App"}
  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit root_path
      expect(page).to have_content('Sample App')
    end
    it "should have title 'Home' " do
      visit root_path
      expect(page).to have_title("#{base_title}")
    end
  end
  describe "Help Page" do
    it "should have the content 'This is the Help page'" do
      visit help_path
      expect(page).to have_content('Help Page here!')
    end
    it "should have title 'Help'" do
      visit help_path
      expect(page).to have_title("#{base_title} | Help")
    end

    describe "About Page" do 
      it "should have the content 'About Us'" do
        visit about_path
        expect(page).to have_content ("About Us")
      end
      it "should have title 'About Us'" do
        visit about_path
        expect(page).to have_title("#{base_title} | About")

      end
    end
    describe "Contact Page" do
      it "Should have the content 'Contact'" do
        visit contact_path
        expect(page).to have_content("Contact")
      end
      it "Should have title 'Contact'" do
        visit contact_path
        expect(page).to have_title("#{base_title} | Contact")
      end
    end

  end
end
  
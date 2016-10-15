require 'rails_helper'

describe "StaticPages", :type => :request do
  describe "Home page" do
    it "should have the content 'Tag App'" do
      visit root_path
      expect(page).to have_content('Tag App')
    end

    it "should have the title 'Tags'" do
      visit root_path
      expect(page).to have_title("Home")
    end
  end

  describe "Login page" do
    it "should have the content 'Login Page'" do
      visit login_path
      expect(page).to have_content('Login')
    end

    it "should have the title 'Login" do
      visit login_path
      expect(page).to have_title('Login')
    end
  end
end

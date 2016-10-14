require 'rails_helper'

describe "StaticPages", :type => :request do
  describe "Home page" do
    it "should have the content 'Tags App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Tags App')
    end

    it "should have the title 'Tags'" do
      visit '/static_pages/home'
      expect(page).to have_title("Home | Tags App")
    end
  end

  describe "Login page" do
    it "should have the content 'Login Page" do
      visit '/static_pages/login'
      expect(page).to have_content('Login')
    end

    it "should have the title 'Login" do
      visit '/static_pages/login'
      expect(page).to have_title('Login | Tags App')
    end
  end
end

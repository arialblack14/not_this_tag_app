require 'rails_helper'

describe "StaticPages", :type => :request do
  describe "Home page" do
    it "should have the content 'Tags App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Tags App')
    end
  end
end

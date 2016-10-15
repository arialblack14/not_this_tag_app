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

  describe "Post Article page" do
    it "should have the content 'Post Article Page'" do
      visit post_path
      expect(page).to have_content('Post')
    end

    it "should have the title 'Post'" do
      visit post_path
      expect(page).to have_title('Post')
    end
  end
end

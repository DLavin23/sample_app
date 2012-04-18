require 'spec_helper'

describe "Pages" do
  
  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit '/pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the base title" do
      visit '/pages/home'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Help page" do

    it "should have the h1 'Help us Help you'" do
      visit '/pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the base title" do
      visit '/pages/help'
      page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App")
    end

    it "should not have a custom page title" do
      visit '/pages/help'
      page.should_not have_selector('title', :text => '| Help')
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit '/pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the base title 'About'" do
      visit '/pages/about'
      page.should have_selector('title',
                      :text => "Ruby on Rails Tutorial Sample App")
    end
    
    it "should not have a custom page title" do
      visit '/pages/about'
      page.should_not have_selector('title', :text => '| About')
    end
  end
  
  describe 'Contact page' do
    
    it "should have the h1 'Contact Us'" do
      visit '/pages/contact'
      page.should have_selector('h1', :text => 'Contact Us')
    end
    
    it "should have the base title 'Contact Us'" do
      visit '/pages/contact'
      page.should have_selector('title', 
                      :text => "Ruby on Rails Tutorial Sample App")
    end
    
    it "should not have a custom page title" do
      visit '/pages/contact'
      page.should_not have_selector('title', :text => '| Contact')
    end
  end
end
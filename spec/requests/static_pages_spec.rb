require 'spec_helper'

describe "StaticPages ->" do
 
 describe "Home page" do

  it "should have the content 'Sample App'" do
    visit '/static_pages/home'
    page.should have_content('Sample App')
  end
  
  it "should have '| Home' title in the title" do
	visit '/static_pages/home'
	page.should have_selector('title', :text => "| Home")
  end
end

 describe "Help page" do

  it "should have the content 'Help Page'" do
    visit '/static_pages/help'
    page.should have_content('Help Page')
  end

  it "should have '| Help' title in the title" do
	visit '/static_pages/help'
	page.should have_selector('title', :text => "| Help")
  end
  
end

describe "About Page" do

  it "should have the content 'About Us'" do
    visit '/static_pages/about'
    page.should have_content('About us')
  end

  it "should have '| About' title in the title" do
	visit '/static_pages/about'
	page.should have_selector('title', :text => "| About")
  end

  
end
  
end

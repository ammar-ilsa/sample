require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do

    it { should have_selector('h1', text: 'Sample App') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| Home' }

    #it "should have the content 'Sample App'" do
    #  visit '/static_pages/home'
    #  page.should have_content('Sample App')
    #end
  end

  describe "Help page" do
    before { visit static_pages_help_path }

    it { should have_selector('h1', text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end


  describe "About page" do
    before { visit static_pages_about_path }

    it { should have_selector('h1', text: 'About') }
    it { should have_selector('title', text: full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit static_pages_contact_path }
    it { should have_selector('h1', text: 'Contact') }
    it { should have_selector('title', text: full_title('Contact')) }
  end
  #
  #describe "Help page" do
  #  it "should have the content 'Help'" do
  #    visit '/static_pages/help'
  #    page.should have_content('Help')
  #  end
  #end
  #
  #describe "About page" do
  #  it "should have the content 'About Us'" do
  #    visit '/static_pages/about'
  #    page.should have_content('About Us')
  #  end
  #end
  #
  #
  #describe "Help page" do
  #  it "should have the h1 'Help'" do
  #    visit '/static_pages/help'
  #    page.should have_selector('h1', :text => 'Help')
  #  end
  #  it "should have the title 'Help'" do
  #    visit '/static_pages/help'
  #    page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | Help")
  #  end
  #end
  #
  #describe "About page" do
  #  it "should have the h1 'About Us'" do
  #    visit '/static_pages/about'
  #    page.should have_selector('h1', :text => 'About Us')
  #  end
  #  it "should have the title 'About Us'" do
  #    visit '/static_pages/about'
  #    page.should have_selector('title',
  #                              :text => "Ruby on Rails Tutorial Sample App | About Us")
  #  end
  #end
  #
  ##describe "Home page" do
  ##  it "should have the h1 'Sample App'" do
  ##    visit '/static_pages/home'
  ##    page.should have_selector('h1', :text => 'Sample App')
  ##  end
  ##  it "should have the title 'Home'" do
  ##    visit '/static_pages/home'
  ##    page.should have_selector('title', :text => "#{base_title} | Home")
  ##  end
  ##
  ##  it "should not have a custom page title" do
  ##    visit '/static_pages/home'
  ##    page.should_not have_selector('title', :text => '| Home')
  ##  end
  ##end
  #
  #
  #describe "Help page" do
  #  it "should have the h1 'Help'" do
  #    visit '/static_pages/help'
  #    page.should have_selector('h1', :text => 'Help')
  #  end
  #  it "should have the title 'Help'" do
  #    visit '/static_pages/help'
  #    page.should have_selector('title', :text => "#{base_title} | Help")
  #  end
  #end
  #
  #describe "About page" do
  #  it "should have the h1 'About Us'" do
  #    visit '/static_pages/about'
  #    page.should have_selector('h1', :text => 'About Us')
  #  end
  #  it "should have the title 'About Us'" do
  #    visit '/static_pages/about'
  #    page.should have_selector('title', :text => "#{base_title} | About Us")
  #  end
  #end
  #describe "Contact page" do
  #  it "should have the h1 'Contact'" do
  #    visit '/static_pages/contact'
  #    page.should have_selector('h1', :text => 'Contact')
  #  end
  #  it "should have the title 'Contact'" do
  #    visit '/static_pages/contact'
  #    page.should have_selector('title', :text => "#{base_title} | Contact")
  #  end
  #end
  #
  ##New Function
  #describe "Home page" do
  #  before { visit root_path }
  #  it "should have the h1 'Sample App'" do
  #    page.should have_selector('h1', text: 'Sample App')
  #  end
  #  it "should have the base title" do
  #    page.should have_selector('title',
  #                              text: "Ruby on Rails Tutorial Sample App")
  #  end
  #  it "should not have a custom page title" do
  #    page.should_not have_selector('title', text: '| Home')
  #  end
  #end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: full_title('About Us')
    click_link "Help"
    page.should # fill in
    click_link "Contact"
    page.should # fill in
    click_link "Home"
    click_link "Sign up now!"
    page.should # fill in
    click_link "sample app"
    page.should # fill in
  end



end
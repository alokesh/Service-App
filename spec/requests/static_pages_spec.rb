require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('p',    text: 'Home') }
    it { should have_selector('title', text: full_title('Home')) }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('p',    text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('p',    text: 'About') }
    it { should have_selector('title', text: full_title('About Us')) }
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('p',    text: 'Contact') }
    it { should have_selector('title', text: full_title('Contact')) }
  end
end
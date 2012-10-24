require 'spec_helper'

describe "Static Pages" do
	
	subject { page }
	
	describe "Home Page" do
		before { visit root_path }
		it { should have_selector('title', text: "Probases") }
	end

	describe "About Page" do
		before { visit about_path }
		it { should have_selector('title', text: "Probases | About Us") }
		it { should have_selector('h1', text: "About Us") }
	end

	describe "Help Page" do
		before { visit help_path }
		it { should have_selector('title', text: "Probases | Help") }
		it { should have_selector('h1', text: "Help") }
	end

	describe "Contact Us Page" do
		before { visit contact_us_path }
		it { should have_selector('title', text: "Probases | Contact Us") }
		it { should have_selector('h1', text: "Contact Us") }
	end

	describe "Privacy Page" do
		before { visit privacy_path }
		it { should have_selector('title', text: "Probases | Privacy") }
		it { should have_selector('h1', text: "Privacy") }
	end
  
end

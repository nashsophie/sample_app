require 'spec_helper'

describe "User pages" do

  subject { page }

  describe "index" do
      before do
        sign_in FactoryGirl.create(:user)
        FactoryGirl.create(:user, name: "Bob", email: "bob@example.com")
        FactoryGirl.create(:user, name: "Ben", email: "ben@example.com")
        visit users_path
      end

      it { should have_selector('title', text: 'All users') }
      it { should have_selector('h1', text: 'All users') }
      it "should list each user" do
        User.all.each do |user|
          page.should have_selector('li', text: user.name)
        end
      end
    end
    
  
  describe "signup page" do
    before { visit signup_path }

    it { should have_selector('h1',    text: 'Sign up') }
    it { should have_selector('title', text: 'Sign up') }
  end
  
  describe "profile page" do
    # Code to make a user variable
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }

    it { should have_selector('h1',    text: user.name) }
    it { should have_selector('title', text: user.name) }
  end
  
  describe "edit" do
      let(:user) { FactoryGirl.create(:user) }
      before { visit edit_user_path(user) }

      describe "page" do
        it { should have_selector('h1', text: "Update your profile") }
        it { should have_selector('title', text: "Edit user") }
        it { should have_link('change', href: 'http://gravatar.com/emails') }
      end

      describe "with invalid information" do
        before { click_button "Save changes" }
        it { should have_content('error') }
      end
    end
  
end
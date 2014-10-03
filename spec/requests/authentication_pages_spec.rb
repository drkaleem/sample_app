require 'spec_helper'

  describe "Authentication" do
    subject {page}
    describe "Sign in page" do
      before {visit signin_path}
      
    describe "with valid information" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        fill_in "Email",    with: user.email.upcase
        fill_in "Password", with: user.password
        click_button "Sign in"
      end
      end      
      it { should have_content('Sign in') }
      it { should have_title('Sign in') }
      it { should have_selector('div.alert.alert-error') }
    end 
  end

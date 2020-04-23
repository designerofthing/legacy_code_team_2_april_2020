require 'rails_helper'

feature 'user can log in' do
    let(:registered_user) {create(:user)}
    before do
        visit root_path
        click_on 'Login'
    end

    it 'user can successfully log in' do
      fill_in "Email", with: registered_user.email
      fill_in "Password", with: registered_user.password
      click_on "Log in"
      expect(page).to have_content "Signed in successfully."
    end
end

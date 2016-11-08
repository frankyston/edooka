require 'rails_helper'

describe 'user authentication' do 
	before(:each) do
        visit root_path
    end

	it 'allows signin with valid credentials' do
		sign_user_in(create(:user))
		expect(page).to have_content('Signed in successfully')
	end

	it 'does not allows signin with valid credentials' do
		sign_user_in(create(:user), password: 'wrong pw')
		expect(page).to have_content('Invalid email or password')
	end

	it 'allows user to sign out' do
		sign_user_in(create(:user))

		visit root_path
		click_link 'Sign out'
		expect(page).to have_content('Signed out successfully')
	end

	def sign_user_in(user, opts={})
		visit new_user_session_path
		fill_in 'Email', with: user.email
		fill_in 'Password',with: (opts[:password] || user.password)
		click_link 'Sign in'
	end
end
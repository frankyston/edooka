require 'rails_helper'

describe 'account create' do 
	it 'allows user to create account' do
		visit root_path
		click_link 'Create Account'

		#fill_in 'Name',      with: 'John Doe'
		#fill_in 'Email',     with: 'johndoe@johndoe.com'
		fill_in 'Pitch',     with: 'The best school on line ever'
		fill_in 'Subdomain', with: 'test_subdomain'
		#fill_in 'Password',  with: 'pw'
		#fill_in 'Password Confirmation', with: 'pw'
		click_button 'Create Account'

		expect(page).to have_content('Signed up successfully')
	end
end
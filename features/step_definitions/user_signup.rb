Given(/^I am a new user$/) do
end

When(/^I visit the sign up page$/) do
	visit signup_path
end

When(/^fill in the information$/) do
   fill_in('Email', with: 'your@gmail.com')
   fill_in('Password', with: 'password')

   click_button('Create user')
end

Then(/^I should be signed up$/) do
  expect(page).to have_content('Sign up successful')
end

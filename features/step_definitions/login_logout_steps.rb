Given(/^I am an existing user$/) do
  
end

When(/^I visit the log in page$/) do
  visit login_path
end

When(/^fill in my details$/) do
  fill_in('Email', with: 'your@gmail.com')
   fill_in('Password', with: 'password')

   click_button('Log in')
end

Then(/^I should be logged in$/) do
  visit users_path
end
Given(/^am a logged in user$/) do
  visit login_path
  fill_in('Email', with: 'your@gmail.com')
   fill_in('Password', with: 'password')

   click_button('Log in')
end

Then(/^user can log out$/) do
  visit root_path
end


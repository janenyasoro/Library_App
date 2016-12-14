Given(/^I am a saved user$/) do
 @user = FactoryGirl.create(:user)
end
When(/^I visit the edit page$/) do
  visit edit_user_path(@user)
end

When(/^edit the information$/) do
  fill_in('Email', with:'akinyi@gmail.com')
  fill_in('Password', with: 'password')

  click_button('Save Changes')
end

Then(/^my details should be updated$/) do
end


Given(/^l am a saved user$/)do
  @user = FactoryGirl.create(:user)
end
When(/^l visit the update page$/)do
  visit edit_user_path(@user)
end
When(/^write my new details/)do
  fill_in('Email', with: 'akinyi@gmail.com')
  fill_in('Password', with: 'password')

  click_button('Save Changes')
end
Then(/^my details should be updated in the database$/) do
end

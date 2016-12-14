Given(/^i am a registered user$/) do
  @user =FactoryGirl.create(:user)
end
When(/^i visit the show page$/) do
  visit users_path
end
Then(/^l should see my details$/) do
  pending
end

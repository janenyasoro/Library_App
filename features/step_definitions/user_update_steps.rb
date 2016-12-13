Given(/^l am a saved user$/)do
  user = FactoryGirl.create(:user)
end
When(/^l visit the update page$/)do
  get :edit, id:user
end
When(/^write my new details/)do
  pending
end
Then(/^my details should be updated in the database$/) do
  pending
end

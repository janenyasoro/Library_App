Given(/^I am a saved user$/) do
  get '/edit'
end
When(/^I visit the edit page$/) do
 user = FactoryGirl.create(:user)
end

When(/^edit the information$/) do
  get '/edit', id:@user
end

Then(/^my details should be updated$/) do
end


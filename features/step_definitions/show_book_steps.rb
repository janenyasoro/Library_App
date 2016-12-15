Given(/^l am the current admin$/)do
  @book = FactoryGirl.create(:book)
end
When(/^l visit the show book page$/) do
  visit book_path(@book)
end
Then(/^l should see the book$/) do
end

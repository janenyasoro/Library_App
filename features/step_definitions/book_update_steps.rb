Given(/^l am the existing book$/) do
  @book = FactoryGirl.create(:book)
end
When(/^l visit the update book page and click on the Save Changes button$/) do
  visit edit_book_path(@book)
  fill_in('Title', with: 'King of the Jungle')
  fill_in('ISBN', with: '1234')

  click_button('Update Changes')
end
Then(/^the book details should be updated$/) do
end


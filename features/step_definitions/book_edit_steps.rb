Given(/^l am the current administrator$/)do
  @book = FactoryGirl.create(:book)
end
When(/^l visit the edit_book page$/) do
  visit edit_book_path(@book)
end
When(/^edit the book details$/) do
  fill_in('Title', with: 'King of the Jungle')
  fill_in('ISBN', with: '1234')

  click_button('Update Changes')
end
Then(/^the book should be updated$/) do
end


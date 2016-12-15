Given(/^l am the admin$/) do
end
When(/^l visit the book page$/) do
  visit new_book_path
end
When(/^fill in the book details$/) do
  fill_in('Title', with: 'Witches of Eastend' )
  fill_in('ISBN', with: '12')
  fill_in('Quantity', with: '4')

  click_button('Add Book')
end
Then(/^the new book should be added$/) do
  expect(page).to have_content("Book  successfully added")
end

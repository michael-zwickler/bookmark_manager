feature 'create bookmark' do
scenario 'creating a new bookmark' do
  visit '/bookmarks/new'
  fill_in('url', with: 'http://example.org')
  click_button 'submit'
  expect(page).to have_content 'http://example.org'
end
end
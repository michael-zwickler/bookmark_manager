feature 'to delete a bookmark' do
  scenario 'there is a delete button on the page' do
    Bookmark.create('I am a Maker', 'www.makers.com')
    bookmark = Bookmark.create('I am Google', 'www.google.com')
    Bookmark.create('I am a Maker', 'www.makers.com')
    visit('/bookmarks')
    expect(page).to have_content("I am Google")
    click_button("Delete #{bookmark.id}")
    expect(page).not_to have_content("ditty")
    expect(page).not_to have_content("I am Google")
  end
end

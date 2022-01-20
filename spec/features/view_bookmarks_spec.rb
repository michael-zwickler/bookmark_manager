feature 'view all bookmarks' do
  scenario 'displays Here are your bookmarks and bookmarks' do

    Bookmark.create('I am the Makers Page', 'http://www.makersacademy.com')
    Bookmark.create('I am the Destroy All Software', 'http://www.destroyallsoftware.com')
    Bookmark.create('I am Google', 'http://www.google.com')

    visit '/bookmarks'
    
    expect(page).to have_content "Here are your bookmarks:"
    expect(page).to have_link("I am the Makers Page", :href => "http://www.makersacademy.com")
    expect(page).to have_link("I am the Destroy All Software", :href => "http://www.destroyallsoftware.com")
    expect(page).to have_link("I am Google", :href => "http://www.google.com")
  end
end

feature 'create bookmark' do
  scenario 'creating a new bookmark' do
    visit '/bookmarks/new'
    fill_in('title', with: 'Just an Example Page')
    fill_in('url', with: 'http://example.org')
    click_button 'submit'
    expect(page).to have_link("Just an Example Page", :href => "http://example.org")
  end
end

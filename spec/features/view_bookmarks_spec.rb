feature 'view all bookmarks' do
  scenario 'displays Here are your bookmarks and bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content "Here are your bookmarks:"
    expect(page).to have_content "www.google.com"
    expect(page).to have_content "makers.tech"
  end
end

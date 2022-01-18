feature 'view all bookmarks' do
  scenario 'displays Here are your bookmarks and bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content "Here are your bookmarks:"
    expect(page).to have_content "http://www.google.com/"
    expect(page).to have_content "http://www.makersacademy.com/"
  end
end

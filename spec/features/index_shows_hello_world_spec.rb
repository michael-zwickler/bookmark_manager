# frozen_string_literal: true

feature 'Start Page greets you with Hello World' do
  scenario 'shows Hello World' do
    visit('/')
    expect(page).to have_content('Bookmark Manager')
  end
end

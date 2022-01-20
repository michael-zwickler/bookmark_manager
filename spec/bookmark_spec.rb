describe Bookmark do
  describe ".all" do
    it "returns an array of bookmarks" do

      bookmark = Bookmark.create("Just an Example Page", "http://example.org")
      Bookmark.create('I am the Makers Page', 'http://www.makersacademy.com')
      Bookmark.create('I am the Destroy All Software', 'http://www.destroyallsoftware.com')

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq(3)
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Just an Example Page'
      expect(bookmarks.first.url).to eq 'http://example.org'
    end
  end

  describe '.create' do
    it 'changes the length of the return array of .all by one' do
      expect { Bookmark.create('Test', 'http://www.test.com') }.to change { Bookmark.all.length }.by(1) 
    end
    it 'creates a new bookmark' do
      bookmark = Bookmark.create('Test Bookmark', 'http://www.example.org')
      persisted_data = persisted_data(bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.url).to eq 'http://www.example.org'
      expect(bookmark.title).to eq 'Test Bookmark'
    end
  end
end

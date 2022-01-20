describe Bookmark do
  describe ".all" do
    it "returns an array of bookmarks" do

      Bookmark.create('I am the Makers Page', 'http://www.makersacademy.com')
      Bookmark.create('I am the Destroy All Software', 'http://www.destroyallsoftware.com')

      bookmarks = Bookmark.all

      expect(bookmarks[0].title).to eq('I am the Makers Page')
      expect(bookmarks[1].url).to eq('http://www.destroyallsoftware.com')
    end
  end

  describe '.create' do
    it 'changes the length of the return array of .all by one' do
      expect { Bookmark.create('Test', 'http://www.test.com') }.to change { Bookmark.all.length }.by(1) 
    end
  end
end

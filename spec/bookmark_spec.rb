describe Bookmark do
  describe ".all" do
    it "returns the values in the bookmarks array" do
      expect(Bookmark.all).to include("http://www.google.com/")
      expect(Bookmark.all).to include("http://www.makersacademy.com/")
    end
  end
end

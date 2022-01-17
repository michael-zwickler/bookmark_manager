describe Bookmark do
  describe "#all" do
    it "returns the values in the bookmarks array" do
      expect(subject.all).to eq ["www.google.com", "makers.tech"]
    end
  end
end

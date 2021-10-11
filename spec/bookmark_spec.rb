require "bookmark"

describe BookMark do
  bookmark = BookMark.new
  it "Responds to Bookmark class" do
    expect(bookmark).to be_instance_of(BookMark)
  end
  
  it "Return list of bookmarks" do
    expect(BookMark.all).to include("http://www.google.com")
  end
  
end
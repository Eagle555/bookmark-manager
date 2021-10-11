class BookMark
=begin
  attr_reader :bookmarks
  
  def initialize
    @bookmarks = []
  end
=end  
  def self.all
    [
      "http://www.makersacademy.com",
      "http://www.destroyallsoftware.com",
      "http://www.google.com"
     ]
  end
end
require 'pg'

class BookMark
=begin
  attr_reader :bookmarks
  
  def initialize
    @bookmarks = []
  end
=end  
  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| bookmark['url'] }
  end
end

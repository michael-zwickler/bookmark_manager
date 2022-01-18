require 'pg'

class Bookmark
  def initialize
    @bookmarks = ["www.google.com", "makers.tech"]
  end

  def self.all

    database = 'bookmark_manager'
    database += '_test' if ENV['ENVIRONMENT'] == 'test'

    connection = PG.connect(dbname: database)
    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end

  def self.create(url)
    database = 'bookmark_manager'
    database += '_test' if ENV['ENVIRONMENT'] == 'test'

    connection = PG.connect(dbname: database)
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}');")
  end
end

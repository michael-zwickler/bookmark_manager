require 'pg'

class Bookmark

  attr_reader :id, :title, :url

  def initialize(id, title, url)
    @id = id
    @title = title
    @url = url
  end
  
  def self.all
    result = connect_to_db.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| Bookmark.new(bookmark['id'], bookmark['title'], bookmark['url']) }
  end

  def self.create(title, url)
    result = connect_to_db.exec_params("INSERT INTO bookmarks (title, url) VALUES($1,$2) RETURNING id, url, title;", [title, url])
    Bookmark.new(result.first['id'], result.first['title'], result.first['url'])
  end 

  def self.delete(id)
    result = connect_to_db.exec_params("DELETE FROM bookmarks WHERE id = $1;", [id])
  end

  private_class_method def self.connect_to_db
    database = 'bookmark_manager'
    database += '_test' if ENV['ENVIRONMENT'] == 'test'
    return PG.connect(dbname: database)
  end

end

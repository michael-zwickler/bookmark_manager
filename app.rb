# frozen_string_literal: true
require './lib/bookmark'
require 'sinatra/base'
require 'sinatra/reloader'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Bookmark Manager'
  end

  get '/bookmarks' do
    @bookmark = Bookmark.new.all
    erb(:'bookmarks/index')
  end

  run! if app_file == $0
end

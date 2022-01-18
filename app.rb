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
    @bookmark = Bookmark.all
    erb(:'bookmarks/index')
  end

  get '/bookmarks/new' do
    erb(:'bookmarks/new')
  end

  post '/bookmarks/new' do
    Bookmark.create(params[:url])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end

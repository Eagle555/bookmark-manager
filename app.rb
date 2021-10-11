require 'sinatra'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end
  
  get "/" do
    erb(:index)
  end
  
  get '/bookmarks' do
    @bookmarks = BookMark.all
    erb :'bookmarks/index'
  end
=begin
  get "/bookmark" do
    erb(:bookmark)
  end
=end
  run! if app_file == $0
end
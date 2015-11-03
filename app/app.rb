require './app/models/link'
require 'sinatra/base'

class BookmarkManager < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :'/links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end

  post '/links' do
    Link.create(:title => params[:name], :url => params[:address])
    redirect '/links'
  end

end

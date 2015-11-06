ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require_relative 'data_mapper_setup'

class BookmarkManager < Sinatra::Base

  enable :sessions
  set :session_secret, 'Super secret'

  get '/' do
    erb :'index'
  end

  get '/links' do
    @links = Link.all
    erb :'/links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end

  get '/tags' do
    @tags = Tag.all
    erb :'/tags/index'
  end

  get '/tags/:filter' do
    @filter = Tag.first(name: params[:filter])
    @links = @filter.links
    erb :'tags/filter'
  end

  get '/users/new' do
    erb :'users/new'
  end

  post '/users' do
    @user = User.create(name: params['name'], password: params['password'], email: params['email'])
    session[:user_id] = @user.id
    redirect('/links')
  end

  post '/links' do
    link = Link.new(title: params[:title], url: params[:url])
    params[:tags].split.each do |tag|
      final_tag = (Tag.first(name: tag) or Tag.create(name: tag))
      link.tags.push(final_tag)
    end
    link.save
    redirect '/links'
  end

  helpers do
   def current_user
     @current_user ||= User.get(session[:user_id])
   end
  end

end

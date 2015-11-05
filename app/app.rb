ENV["RACK_ENV"] ||= "development"

require 'sinatra/base'
require_relative 'data_mapper_setup'

class BookmarkManager < Sinatra::Base
  enable :sessions
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
    erb :'/tags'
  end

  get '/tags/:filter' do
    @filter = Tag.first(name: params[:filter])
    @links = @filter.links
    erb :'tags/filter'
  end

  get '/sign-up' do
    erb :'sign-up'
  end

  post '/create-user' do
    User.create(name: params['name'], password: params['password'], email: params['email'])
    session['user'] = params['name']
    redirect('/welcome')
  end

  get '/welcome' do
    @user = User.first(name: session['user'])
    erb :welcome
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

end

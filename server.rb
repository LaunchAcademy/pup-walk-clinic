require 'sinatra'
require 'sinatra/activerecord'
require "pry" if development? || test?
require 'sinatra/flash'
set :sessions, true

Dir[File.join(File.dirname(__FILE__), 'app', '**', '*.rb')].each do |file|
  require file
end

configure do
  set :views, 'app/views'
end

get '/' do
  redirect '/pups'
end

get '/pups' do
  @pups = Pup.all
  erb :'/pups/index'
end

get '/pups/new' do
  erb :'pups/new'
end

get '/pups/:id' do
  @pup = Pup.find(params[:id])
  @walkers = Walker.all
  @walks = @pup.walks
  @days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

  erb :'/pups/show'
end

post '/walks' do
  @pup = Pup.find(params[:pup_id])
  @walker = Walker.find(params[:walker_id])
  @day = params[:day]
  walk = Walk.new(pup: @pup, walker: @walker, day: @day)

  if walk.save
    redirect "/pups/#{params[:pup_id]}"
  else
    erb :'pups/show'
  end
end

post '/pups' do
  pup = Pup.new(name: params[:name])
    if pup.save
      flash[:message] = "Saved!"
      redirect "/pups"
    else
      flash[:error] = "Bummer, something went wrong."
      erb :'pups/new'
    end
end

get '/walkers' do
  @walkers = Walker.all
  erb :'/walkers/index'
end

get '/walkers/new' do
  erb :'walkers/new'
end

get '/walkers/:walker_id' do
  @walker = Walker.find(params[:walker_id])
  @walks = @walker.walks
  @days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

  erb :'/walkers/show'
end

post '/walkers' do
  walker = Walker.new(name: params[:name])
    if walker.save == false
      flash[:message] = "Saved!"
      redirect '/walkers'
    else
      flash.now[:error] = "Bummer, something went wrong."
      erb :'walkers/new'
    end
end

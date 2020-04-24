require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @priate = Priate.new(params)
      @ships = params[:ships]
      @ships.each {|ship| Ship.new(ship)}
      binding.pry
      erb :'pirates/show'
    end
  end
end

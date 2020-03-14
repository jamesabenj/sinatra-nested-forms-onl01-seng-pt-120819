require './environment'
require_relative 'app/models/pirate.rb'
require_relative 'app/models/ship.rb'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/pirates' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name]], params[pirate[:weight], params[pirate][:height]])
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      @ships = Ship.all
      erb :show
    end



  end
end

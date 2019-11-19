require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :user_input
  end
  
  post '/piglatinize' do 
    phrase = PigLatinizer.new
    phrase.to_pig_latin(params[:user_phrase])
  end
end
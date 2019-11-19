require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :user_input
  end
  
  post '/piglatinize' do 
    phrase = PigLatinizer.new
    phrase.pig_latinize_word(params[:user_phrase])
  end
end
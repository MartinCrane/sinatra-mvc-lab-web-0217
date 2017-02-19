require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    text_from_user = params[:user_phrase]
    latinize = PigLatinizer.new
    latinize.text = text_from_user
    @display_phrase = latinize.piglatinize(text_from_user)
    erb :piglatinize
  end

end

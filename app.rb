require_relative 'config/environment'

class App < Sinatra::Base

  enable :sessions
  set :session_secret, "secret"

  get '/' do
    @session = session
    erb :index
  end

  post '/checkout' do 
    @session = session
    @params = params
    # @params[:session] = @session
    @session[:item] = @params[:item]
    "#{@params}"
  end

end
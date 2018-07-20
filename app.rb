require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session.secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session
  end

end

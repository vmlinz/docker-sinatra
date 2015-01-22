require 'sinatra'
require 'sinatra/base'

set :public_folder, Proc.new { File.join(root, "static") }

class App < Sinatra::Base
  get '/' do
    'Hello from docker!'
  end

  get '/hello/' do
    greeting = params[:greeting] || "Hi, there"
    erb :index, :locals => {'greeting' => greeting}
  end
end


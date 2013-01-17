require 'json'
require 'sinatra/base'

class ProspectApi < Sinatra::Base

  set :data, ''

  before /.*/ do
    content_type :json
  end

  get '/' do
    "Hello Sinatra!"
  end

  get '/prospect' do
    ProspectApi.data.to_json
  end

  post '/prospect' do
  end

  # $0 is the executed file
  # __FILE__ is the current file
  run! if __FILE__ == $0

end

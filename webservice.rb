require "rubygems"
require "bundler"
Bundler.require

class Twinfield < Sinatra::Base
  register Sinatra::Toadhopper
  set :airbrake, :api_key => "", :notify_host => ""

  error do
    post_error_to_airbrake!
    "Sorry there was an error"
  end

  get "/" do
    "Twinfield Webservice"
  end

  post "/session/new" do
  end
end
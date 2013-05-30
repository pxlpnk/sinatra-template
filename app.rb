require "bundler"
Bundler.setup(:default)
Bundler.require

$: << File.dirname(__FILE__) + "/models" # Assuming app.rb is at the same level as lib

require "haml"

enable :sessions
set :session_secret, "Some random and long sequence"
set :haml, :format => :html5


get '/' do
  haml :index
end

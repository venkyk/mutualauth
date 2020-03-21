require 'sinatra'

set :bind, '0.0.0.0'
set :port, 80

get "/admin" do
  header_token = request.env["HTTP_X_CLIENT_DN"]
  "Here's the admin page for you using the header HTTP_X_CLIENT_DN #{header_token}"
end

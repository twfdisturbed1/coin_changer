require "sinatra"
require_relative "coin_changer.rb"
get '/' do
	results = results || {}
erb :cents, locals: {results: results}
end
post '/get_change' do
  cents = params[:number_input].to_i
  results = coin_changer(cents)
  p results.class
  p results
erb :cents, locals: {results: results}
end
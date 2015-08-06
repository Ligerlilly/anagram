require 'sinatra'
require 'sinatra/reloader'
require './lib/anagram?'
also_reload 'lib/**/*.rb'

get '/' do
  erb :index
end

get '/anagram' do
  @anagram_array = params['word'].anagram?(params['string'])
  @word = params['word']
  erb :anagram
end

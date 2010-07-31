require 'rubygems'
require 'sinatra'
require "sinatra/base"
require "sinatra/reloader"
require 'erb'


get '/log' do
   erb:log

end
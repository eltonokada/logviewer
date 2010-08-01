require 'rubygems'
require 'sinatra'
require "sinatra/base"
require "sinatra/reloader"
require 'erb'

get '/' do
   erb:log
end

get '/log' do
  result =""
  IO.popen("tail -n 500 /Projetos/colaboracoes/log/development.log") do |f|
    while line = f.gets
      result+=line
    end
  end
  result
end
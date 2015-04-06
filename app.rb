# -*- encoding: utf-8 -*-

require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require File.dirname(__FILE__) + '/config/init'

get '/' do
  @apps = Apps.all
  p @apps
  erb :index
end

get '/new' do
  erb :new
end

post '/create' do
  app = Apps.create(:app_id => params[:app_id],
                    :name => params[:app_name],
                    :created_at => Time.now)
  'ok'
end
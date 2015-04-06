# -*- encoding: utf-8 -*-
require 'sinatra/sequel'
require 'sqlite3'
require 'logger'

configure :development do
  set :database, 'sqlite://appdebug.db'
  @log = Logger.new(File.dirname(__FILE__) + '/../logs/debug.log')
  @log.level = Logger::DEBUG
end

configure :production do
  set :database, 'sqlite://appreview.db'

  @log = Logger.new(File.dirname(__FILE__) + '/../logs/production.log')
  @log.level = Logger::FATAL
end

$LOAD_PATH << File.dirname(__FILE__) + '/../lib'
require 'model/apps'


require 'rubygems'
require 'activerecord'
require File.dirname(__FILE__)+'/../lib/foreign_key_extensions'
require 'shoulda'
require 'logger'
require 'mocha'
require 'matchy'

ActiveRecord::Base.configurations = {'sqlite3' => {:adapter => 'sqlite3', :database => ':memory:'}}
ActiveRecord::Base.establish_connection('sqlite3')

ActiveRecord::Base.logger = Logger.new(STDERR)
ActiveRecord::Base.logger.level = Logger::WARN

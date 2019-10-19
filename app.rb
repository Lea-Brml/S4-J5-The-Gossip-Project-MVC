require 'bundler'
Bundler.require

require_relative 'lib/gossip'
require_relative 'lib/router'
require_relative 'lib/controller'



Router.new.perform

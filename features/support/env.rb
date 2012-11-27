require File.join(File.dirname(__FILE__), '..', '..', 'api')
require 'rack/test'
require 'json'
#require 'yajl'

module AppHelper
	# Rack-Test expects the app method to return a Rack application
	def app
		ProspectApi
	end
end

World(Rack::Test::Methods, AppHelper)
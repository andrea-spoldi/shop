current_path = File.expand_path(File.dirname(__FILE__))

#adapter = ENV['ADAPTER'] || 'model'


#require current_path + "/#{adapter}"
#require current_path + '/demo_data'
require 'rubygems'
require 'backend'

#add_demo_data!

#map "/admin" do
# run Bowtie::Admin
#  	run Store
#end

#map "/auth" do
#	run Auth
#end

map "/" do 
	run Auth
end

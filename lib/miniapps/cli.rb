require 'thor'

module Miniapps
	class CLI < Thor	
		include Thor::Actions

		argument :app_name, required: false

		def self.source_root
			File.join File.dirname(__FILE__), 'generators'
		end

		desc 'new', 'create a miniapp project'
		def new
			@app_class=app_name.camelize
			if app_name
				directory 'miniapp', app_name
			else
				say 'no app name'
			end 
		end
		def now
			Time.now.strftime("%Y%m%d%H%M%S")
		end
		def app_path
			"miniapp_"+app_name
		end	
		def app_class
			app_name.camelize
		end		
	end
CLI.start

end #Miniapps


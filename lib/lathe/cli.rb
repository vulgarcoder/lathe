#encoding: utf-8
require 'thor'

module Lathe
	class CLI < Thor
		include Thor::Actions

		#    method_option :miniapp, :type => :boolean
		def self.source_root
			File.join File.dirname(__FILE__), 'generators'
		end


		argument :app_name, required: false
		desc 'new', 'create a plugin project'
		method_option :exclude, :type => :boolean, :description => '是否需要生成miniapp的相关输入框架', :default => false
		def new
			if app_name
				if(options[:exclude]) then
					@app_path=app_name
					directory 'mini_app', @app_path
				else
					@app_path="mini_app_"+app_name
					directory 'mini_app', @app_path
				end	
			else
				say '请输入应用名称'
			end
		end
		no_tasks do
			def now
				Time.now.strftime("%Y%m%d%H%M%S")
			end
			def app_path
				@app_path
			end
			def package
				@app_path.camelize
			end
			def app_class
				app_name.camelize
			end
			def the_banner
				puts <<-THING
1.create plugin include miniapp
	lathe new [app_name]

2.create plugin without miniapp
	lathe new [app_name] --exclude
				THING
				help # call help to tack on those useful Task descriptions
			end
		end
	end
	if ARGV.empty?
		# Perform the default, it doesn't have to be a Thor task
		CLI.new.the_banner
	else
		# Start Thor as usual
		CLI.start
	end
	# CLI.start

end #Miniapps


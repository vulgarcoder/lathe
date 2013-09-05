module <%=package%>
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      desc "Installs <%=package%>."

      def install
        route "mount <%=package%>::Engine, at: 'mini_apps'"
        
        inject_into_file 'app/assets/javascripts/application.js', before: "//= require_self" do <<-'RUBY'
 //= require <%=app_path%>/application
          RUBY
        end
         inject_into_file 'app/assets/javascripts/mobile.js', before: "//= require_self" do <<-'RUBY'
 //= require <%=app_path%>/application
          RUBY
        end       
        inject_into_file 'app/assets/stylesheets/application.css', before: "*/" do <<-'RUBY'
*= require <%=app_path%>/application
          RUBY
        end
        inject_into_file 'app/assets/stylesheets/mobile.css', before: "*/" do <<-'RUBY'
*= require <%=app_path%>/application
          RUBY
        end
        rake "<%=app_path%>:install:migrations"

        readme "README"
      end
    end
  end
end

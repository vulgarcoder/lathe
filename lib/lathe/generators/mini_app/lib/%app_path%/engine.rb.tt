# encoding: utf-8
module <%=package%>
  class Engine < ::Rails::Engine
    isolate_namespace <%=package%>

     initializer 'my_engine.interact_with_routes', :after=> :disable_dependency_loading do |app|
     		MiniApp.apps << {:title=>"发出考题",:create_url=>'/mini_apps/<%=app_name%>s/new',:icon=> ActionController::Base.helpers.asset_path('<%=app_path%>/<%=app_name%>_white.png')}
     end
  end
end

class AddTypeToMiniapp < ActiveRecord::Migration
  def change
  		
		MiniApp.where(:name=>"<%=app_name%>").delete_all
		mini_app = MiniappStudy::Study.new(:name=>"<%=app_name%>", :order_number=>90)
		mini_app.save!
		
  end
end

module MiniappTtt
  class TttController < MiniApps::BaseController
	def show
		#手机端的webview请求会请求此controller
		render_base
	end
  end
end

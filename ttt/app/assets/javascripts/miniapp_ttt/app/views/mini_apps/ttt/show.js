jQuery(function($) {
    App.Views.MiniApps.TttShow = MiniAppShow.extend({
        template: "mini_apps/ttt/show",
        events: {
        },
        parse: function(model,context,parser) {
            //在这里可以把服务器返回的properties进行进一步解析
            return model; 
        },
        initialize: function(options) {},
        serialize: function() {
            //这里传递给模板渲染的对象
            var context = this.model.toJSON(),
            return context;
        },
        afterRender: function() {
            //这是页面渲染以后调用的方法

        }
    });

})
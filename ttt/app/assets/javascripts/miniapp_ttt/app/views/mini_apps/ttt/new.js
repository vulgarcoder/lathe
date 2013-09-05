jQuery(function($) {
    App.Views.MiniApps.TttNew = MiniAppNew.extend({
        className: "validationEngineContainer ttt-input-wrap",
        template: "mini_apps/ttt/new",
        events: {
        },
        afterRender: function() {},
        validate: function() {
            return true;
        },
        getProperties: function() {
          return{

          } 
            //return json data
        }

    });
})
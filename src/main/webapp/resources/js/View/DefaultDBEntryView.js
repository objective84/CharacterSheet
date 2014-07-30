/**
 * Created by PVarnerHowland on 7/25/2014.
 */
define("DefaultDBEntryView",
    ["jquery", "underscore", "marionette"],
    function($, _, marionette){
        return marionette.ItemView.extend({
            el: "#entry",

            ui:{
                submitBtn: '#formSubmit'
            },

            events:{
                'click .entry-link': 'onEntryClick'
            },

            onRender: function(){
            },

            onEntryClick: function(event){
                $('#id').val($(event.target).attr('id'));
                $('#form').submit();
            }
        });
    }
);

/**
 * Created by PVarnerHowland on 7/25/2014.
 */
define("LanguageView",
    ["jquery", "underscore", "marionette"],
    function($, _, marionette){
        return marionette.ItemView.extend({
            el: "#languageEntry",

            ui:{
                submitBtn: '#formSubmit'
            },

            events:{
                'click .languageEntry': 'onLanguageEntryClick'
            },

            onRender: function(){
            },

            onLanguageEntryClick: function(event){
                $('#id').val($(event.target).attr('id'));
                $('#languageForm').submit();
            }
        });
    }
);

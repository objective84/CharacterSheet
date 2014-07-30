/**
 * Created by PVarnerHowland on 7/25/2014.
 */
define("CharacterListView",
    ["jquery", "underscore", "marionette"],
    function($, _, marionette) {
        return marionette.ItemView.extend({
            el: "#character-list",

            ui:{
                newCharacterLink: "#new-character"
            },

            events:{
                'click .characterLink': 'submitCharacter',
                'click @ui.newCharacterLink': 'newCharacter'
            },

            onRender: function(){
            },

            submitCharacter: function(event){
                $('#id').val($(event.target).attr('id'));
                $('#characterForm').submit();
            },

            newCharacter: function(){
                $('#characterForm').submit();
            }
        });

    }
)

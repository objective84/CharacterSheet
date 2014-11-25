/**
 * Created by PVarnerHowland on 7/25/2014.
 */
define("CharacterListView",
    ["jquery", "underscore", "marionette"],
    function($, _, marionette) {
        return marionette.ItemView.extend({
            el: "#character-list",

            ui:{
                newCharacterBtn: "#new-character-btn",
                deleteChar: '#delete-char'
            },

            events:{
                'click .characterLink': 'submitCharacter',
                'click @ui.newCharacterBtn': 'newCharacter',
                'click .delete-char': 'onDeleteCharacterClick'
            },

            onRender: function(){
            },

            submitCharacter: function(event){
                $('#id').val($(event.target).attr('id'));
                $('#characterForm').submit();
            },

            newCharacter: function(){
                $('#id').val(null);
                $('#characterForm').submit();
            },

            onDeleteCharacterClick: function(event){
                var id = $(event.target).attr('id').split('-')[0];
                $.ajax({
                    url: "character/"+ id + "/delete.json",
                    type: "DELETE",
                    success: function(data){
                            $('#row-'+id).remove();
                    }

                })
            }
        });

    }
)

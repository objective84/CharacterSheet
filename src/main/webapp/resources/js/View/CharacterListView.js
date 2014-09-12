/**
 * Created by PVarnerHowland on 7/25/2014.
 */
define("CharacterListView",
    ["jquery", "underscore", "marionette"],
    function($, _, marionette) {
        return marionette.ItemView.extend({
            el: "#character-list",

            ui:{
                newCharacterLink: "#new-character",
                deleteChar: '#delete-char'
            },

            events:{
                'click .characterLink': 'submitCharacter',
                'click @ui.newCharacterLink': 'newCharacter',
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
                    url: "character/delete/"+ id + ".json",
                    type: "DELETE",
                    success: function(data){
                            console.log($('#row-'+id))
                            $('#row-'+id).remove();
                    }

                })
            }
        });

    }
)

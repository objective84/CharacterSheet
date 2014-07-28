/**
 * Created by PVarnerHowland on 7/25/2014.
 */
define("RaceView",
    ["jquery", "underscore", "marionette"],
    function($, _, marionette){
        return marionette.ItemView.extend({
            el: "#raceEntry",

            ui:{
                submitBtn: '#formSubmit'
            },

            events:{
                'click .raceEntry': 'onRaceEntryClick'
            },

            onRender: function(){
            },

            onRaceEntryClick: function(event){
                $('#id').val($(event.target).attr('id'));
                $('#raceForm').submit();
            }
        });
    }
);

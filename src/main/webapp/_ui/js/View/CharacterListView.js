/**
 * Created by PVarnerHowland on 7/25/2014.
 */
define("CharacterListView",
    ["jquery", "underscore", "marionette"],
    function($, _, marionette) {
        return marionette.ItemView.extend({
            el: "",

            onRender: function(){
                console.log(1);
            }
        });
    }
)

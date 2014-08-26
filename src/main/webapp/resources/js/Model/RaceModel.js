/**
 * Created by PVarnerHowland on 8/25/2014.
 */

define("RaceModel",
    ["jquery", "underscore", "backbone", "epoxy"],
    function($, _, backbone, epoxy){
        var model = backbone.Model.extend({
                idAttribute: "_id",
                characterId: '0',
                defaults:{
                    id: '0',
                    raceName: '',
                    description: '',
                    size: '',
                    speed: '',
                    languages: null,
                    availableSubraces: null,
                    proficiencies: null
                },

                url: function(url){
                    if(url) {
                        return url;
                    }else{
                        return $('#pathContext').val() + '/race/' + this.get('id') + '.json';
                    }
                }
            }
        );
        epoxy.Model.mixin(model.prototype);
        return model;
    }
);

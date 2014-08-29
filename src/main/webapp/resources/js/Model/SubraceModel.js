/**
 * Created by PVarnerHowland on 8/25/2014.
 */

define("SubraceModel",
    ["jquery", "underscore", "backbone", "epoxy"],
    function($, _, backbone, epoxy){
        var model = backbone.Model.extend({
                idAttribute: "_id",
                characterId: '0',
                defaults:{
                    id: '0',
                    name: '',
                    description: '',
                    subRacialTraits: null,
                    parentRace: null,
                    proficiencies: null
                },

                fetchSubrace: function(options){
                    options = options || {};
                        options.url = $('#pathContext').val() + '/subrace/' + this.characterId + '.json';
                    return Backbone.Model.prototype.fetch.call(this, options);
                },

                url: function(){
                    return $('#pathContext').val() + '/subrace/' + this.characterId + '/' + this.get('id') + '.json';
                }
            }
        );
        epoxy.Model.mixin(model.prototype);
        return model;
    }
);

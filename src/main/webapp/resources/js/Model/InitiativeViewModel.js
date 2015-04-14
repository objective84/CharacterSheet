/**
 * Created by PVarnerHowland on 8/25/2014.
 */

define("InitiativeViewModel",
    ["jquery", "underscore", "backbone", "epoxy"],
    function($, _, backbone, epoxy){
        var model = backbone.Model.extend({
                idAttribute: "_id",
                characterId: '0',
                defaults:{
                    sizeModifiers: {
                            tiny: 5,
                            small: 2,
                            medium: 0,
                            large: -2,
                            huge: -5,
                            gargantuan: -8
                        },
                },

                fetchRace: function(options){
                    options = options || {};
                    if (options.characterId !== undefined) {
                        options.url = $('#pathContext').val() + '/race/' + options.characterId + '/' + this.get('id') + '.json';
                    }else{
                        options.url = $('#pathContext').val() + '/race/' + this.get('id') + '.json';

                    }

                    return Backbone.Model.prototype.fetch.call(this, options);
                },

                url: function(){
                    return $('#pathContext').val() + '/race/' + this.characterId + '/' + this.get('id') + '.json';
                }
            }
        );
        epoxy.Model.mixin(model.prototype);
        return model;
    }
);

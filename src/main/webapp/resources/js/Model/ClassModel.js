/**
 * Created by PVarnerHowland on 8/25/2014.
 */

define("ClassModel",
    ["jquery", "underscore", "backbone", "epoxy"],
    function($, _, backbone, epoxy){
        var model = backbone.Model.extend({
                idAttribute: "_id",
                characterId: '0',
                defaults:{
                    id: '0'
                },

                fetchClass: function(options){
                    options = options || {};
                    options.url = $('#pathContext').val() + '/class/' + this.get('id') + '.json';
                    return Backbone.Model.prototype.fetch.call(this, options);
                },

                url: function(){
                    return $('#pathContext').val() + '/class/' + this.characterId + '/' + this.get('id') + '.json';
                }
            }
        );
        epoxy.Model.mixin(model.prototype);
        return model;
    }
);

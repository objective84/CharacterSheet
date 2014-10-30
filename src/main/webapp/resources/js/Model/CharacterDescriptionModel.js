/**
 * Created by PVarnerHowland on 9/19/2014.
 */
define("CharacterDescriptionModel",
    ["jquery", "underscore", "backbone", "epoxy"],
    function($, _, backbone, epoxy){
        var model = backbone.Model.extend({
            idAttribute: '_id',
            characterId: '0',
            defaults:{
                id: '',
                name: '',
                height: '',
                weight: '',
                gender: '',
                eyes: '',
                hair: ''
            },

            fetchDescription: function(options){
                options = options || {};
                options.url = $('#pathContext').val() + '/description/' + this.characterId + '.json';
                return Backbone.Model.prototype.fetch.call(this, options);
            },

            url: function(){
                return $('#pathContext').val() + '/description.json';
            }

        });
        epoxy.Model.mixin(model.prototype);
        return model;
    }
);

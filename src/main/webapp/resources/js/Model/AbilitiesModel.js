/**
 * Created by PVarnerHowland on 8/21/2014.
 */

define("AbilitiesModel",
    ["jquery", "underscore", "backbone", "epoxy"],
    function($, _, backbone, epoxy){
        var model = backbone.Model.extend({
            idAttribute: '_id',
            characterId: '0',
            defaults:{
                id: '',
                str: '0',
                dex: '0',
                con: '0',
                intel: '0',
                wis: '0',
                cha: '0'
            },

            setAbilities: function(abilities){
                this.set('id', abilities.id);
                this.set('str', abilities.str);
                this.set('dex', abilities.dex);
                this.set('con', abilities.con);
                this.set('intel', abilities.intel);
                this.set('wis', abilities.wis);
                this.set('cha', abilities.cha);
            },

            fetchAbilities: function(options){
                options = options || {};
                options.url = $('#pathContext').val() + '/abilities/' + this.characterId + '.json';
                return Backbone.Model.prototype.fetch.call(this, options);
            },

            url: function(){
                return $('#pathContext').val() + '/abilities.json';
            }

        });
        epoxy.Model.mixin(model.prototype);
        return model;
    }
);

/**
 * Created by PVarnerHowland on 8/21/2014.
 */

define("CoinPurseModel",
    ["jquery", "underscore", "backbone", "epoxy"],
    function($, _, backbone, epoxy){
        var model = backbone.Model.extend({
            characterId: null,
            defaults:{
                    id: '',
                    cp: '0',
                    sp: '0',
                    ep: '0',
                    gp: '0',
                    pp: '0'
                },

            url: function(){
                return $('#pathContext').val() + '/purse/' + this.characterId + '.json';
            }

            });
        epoxy.Model.mixin(model.prototype);
        return model;
    }
);

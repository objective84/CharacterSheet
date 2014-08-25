/**
 * Created by PVarnerHowland on 8/21/2014.
 */

define("AbilitiesModel",
    ["jquery", "underscore", "backbone", "epoxy"],
    function($, _, backbone, epoxy){
        var model = backbone.Model.extend({
                defaults:{
                    str: '0',
                    dex: '0',
                    con: '0',
                    intel: '0',
                    wis: '0',
                    cha: '0',
                    abilityPointsRemaining: '0'
                },

                setAbilities: function(abilities){
                    this.set('str', abilities.str);
                    this.set('dex', abilities.dex);
                    this.set('con', abilities.con);
                    this.set('intel', abilities.intel);
                    this.set('wis', abilities.wis);
                    this.set('cha', abilities.cha);
                    this.set('abilityPointsRemaining', abilities.abilityPointsRemaining);
                    console.log(abilities.abilityPointsRemaining);
                }
            });
        epoxy.Model.mixin(model.prototype);
        return model;
    }
);

/**
 * Created by Peter's Desktop on 7/22/2014.
 */
define("CharacterModel",
    ["jquery", "underscore", "backbone", "epoxy"],
    function($, _, backbone, epoxy){
        var model = backbone.Model.extend({
                idAttribute: "_id",
                urlRoot: $('#pathContext').val() + '/character',
                defaults:{
                    id: "",
                    name: "",
                    encumbered: false,
                    speed: 0,
                    maxHealth: 0,
                    currentHealth: 0,
                    inventoryWeight: 0,
                    armorClass: 0,
                    race: null,
                    subrace: null,
                    clazz: null,
                    characterAdvancement: null,
                    abilities: null,
                    equippedMainHand: null,
                    equippedOffHand: null,
                    equippedArmor: null,
                    coinPurse: null,
                    multiClassList: null,
                    languages: null,
                    proficiencies: null,
                    traits: null,
                    inventory: null
                },

                fetchModel: function(callback){
                    this.fetch({success: _.bind(function(){
                        if(callback)callback();
                        this.trigger(this.constructor.Event_CharacterUpdated);
                    }, this)});
                }
            },
            {
                Event_CharacterUpdated: 'Event_CharacterUpdated'
            }
        );
        epoxy.Model.mixin(model.prototype);
        return model;
    }
);

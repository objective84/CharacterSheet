/**
 * Created by Peter's Desktop on 7/22/2014.
 */
define("CharacterModel",
    ["jquery", "underscore", "backbone", "epoxy"],
    function($, _, backbone, epoxy){
        var model = backbone.Model.extend({
                idAttribute: '_id',
                urlRoot: 'character.json',
                defaults:{
                    id: "",
                    encumbered: false,
                    speed: 0,
                    maxHealth: 0,
                    currentHealth: 0,
                    inventoryWeight: 0,
                    armorClass: 0,
                    numSpellsAllowed: 0,
                    combinedLevel: 1,
                    race: null,
                    subrace: null,
                    clazz: null,
                    abilities: null,
                    equippedArmor: null,
                    equippedMainHand: null,
                    equippedOffHand: null,
                    coinPurse: null,
                    characterDescription: null,
                    characterAdvancement: null,
                    multiClassList: null,
                    languages: null,
                    proficiencies: null,
                    traits: null,
                    inventory: null,
                    spellsKnown: null,
                    spellSlots: null
                },

                fetch: function(options) {
                    options = options || {};
                    options.url = $('#pathContext').val() + '/character/' + this.id + '.json';
                    return Backbone.Model.prototype.fetch.call(this, options);
                },

                save:function(options){
                    options = options || {};
                    options.url = 'character.json';
                    return Backbone.Model.prototype.save.call(this, this.attributes, options);
                }
            }
        );
        epoxy.Model.mixin(model.prototype);
        return model;
    }
);

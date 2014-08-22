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
              }
        });
        epoxy.Model.mixin(model.prototype);
        return model;
    }
);

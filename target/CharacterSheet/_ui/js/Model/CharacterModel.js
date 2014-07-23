/**
 * Created by Peter's Desktop on 7/22/2014.
 */
define("CharacterModel",
    ["jquery", "underscore", "backbone"],
    function($, _, backbone){
        return backbone.Model.extend({
            idAttribute: "_id",
            urlRoot: 'character.json',
              default:{
                  id: "",
                  name: "",
                  race: "",
                  classType: "",
                  str: "8",
                  dex: "8",
                  con: "8",
                  intel: "8",
                  wis: "8",
                  cha: "8"
              }
        });
    }
);

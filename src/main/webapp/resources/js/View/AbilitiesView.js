/**
 * Created by PVarnerHowland on 8/21/2014.
 */

define("AbilitiesView",
    ["jquery", "underscore", "marionette", "AbilitiesModel", 'jqueryUi', 'epoxy', 'AbilitiesModel'],
    function($, _, marionette, CharacterModel, jqueryUi, epoxy, AbilitiesModel) {
        var view = marionette.ItemView.extend({
                el: '#abilties',
                model: null,

                ui: {
                    str: '#Str',
                    dex: '#Dex',
                    con: '#Con',
                    int: '#Int',
                    wis: '#Wis',
                    cha: '#Cha'
                },

                bindings: {
                    '#Str': 'value:str',
                    '#Dex': 'value:dex',
                    '#Con': 'value:con',
                    '#Int': 'value:intel',
                    '#Wis': 'value:wis',
                    '#Cha': 'value:cha',
                    '#ability-point-label': 'text:abilityPointsUsed'
                },
                events: {
                    'change model' : 'onModelChanged'
                },

                onRender: function(abilities){
                    this.model = new AbilitiesModel();
                    this.applyBindings();
                    this.setAbilities(abilities);
                },

                setAbilities: function(abilities){
                    this.model.setAbilities(abilities);
                    this.trigger(this.constructor.Event_AbilitiesUpdated);
                },

                initialize: function(){
                }
            },
            {
                Event_AbilitiesUpdated: "Event_AbilitiesUpdated.0"
            });
        epoxy.View.mixin(view.prototype);
        return view;

    });

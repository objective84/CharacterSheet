/**
 * Created by PVarnerHowland on 8/25/2014.
 */


define("RaceView",
    ["jquery", "underscore", "marionette", "AbilitiesModel", 'jqueryUi', 'epoxy', 'RaceModel'],
    function($, _, marionette, CharacterModel, jqueryUi, epoxy, RaceModel) {
        var view = marionette.ItemView.extend({
            el: '#character-sheet',
            model: null,

            ui: {
                race: '#race',
                subrace: '#subrace'
            },

            bindings: {
                '#race': 'selectedIndex:id',
                '#subrace': 'options:availableSubraces'
            },

            events: {
                'change @ui.race' : 'onRaceChange'
            },

            onRender: function(){
                this.model = new RaceModel();
            },

            fetch: function(callback){
                debugger;
                this.model.fetch({success: callback});
            },

            setCharacterId: function(id){
                this.model.characterId = id;
                if(this.model.get('id') !== '0') {
                    this.model.fetch();
                    console.log(this.model);
                }
//                $('#pathContext').val() + '/race/' + this.get('_id') + '/' + this.characterId + '.json';
            },

            onRaceChange: function(event){
                this.model.set('_id', $(event.target).val());
                this.model.fetch({success: _.bind(function(){
                    this.trigger('updateCharacter');
                }, this)});
//                var data = {
//                    'characterId': this.model.get('id') + '',
//                    'raceId': this.ui.race.val() + ''
//                };
//                $.getJSON("race.json", data, _.bind(function () {
//                    this.fetchModel();
//                }, this));
            },

            initialize: function(){
            }
        });
        epoxy.View.mixin(view.prototype);
        return view;

    });

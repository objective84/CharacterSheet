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

            events: {
                'change @ui.race' : 'onRaceChange'
            },

            onRender: function(){
                this.model = new RaceModel();
            },

            fetch: function(callback){
                this.model.fetchRace({success: _.bind(function(){
                    if(callback)callback();
                    this.setSubRaces();
                    this.ui.race.val(this.model.get('id'));
                },this)});
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
                this.model.set('id', $(event.target).val());
                this.model.save(null, {success: _.bind(function(){
                    this.setSubRaces();
                    this.trigger('raceUpdated');
                }, this)});
            },

            setSubRaces: function(){
                $('.subrace-option').remove();
                if(this.model.get('availableSubraces').length > 0){
                    $(this.model.get('availableSubraces')).each(_.bind(function(key, value){
                        this.ui.subrace.append('<option class="subrace-option" value="' + value.id + '">' + value.name + '</option>')
                    }, this));
                }
            },

            initialize: function(){
            }
        });
        epoxy.View.mixin(view.prototype);
        return view;

    });

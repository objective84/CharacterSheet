/**
 * Created by PVarnerHowland on 8/25/2014.
 */


define("SubraceView",
    ["jquery", "underscore", "marionette", "AbilitiesModel", 'jqueryUi', 'epoxy', 'SubraceModel'],
    function($, _, marionette, CharacterModel, jqueryUi, epoxy, SubraceModel) {
        var view = marionette.ItemView.extend({
            el: '#character-sheet',
            model: null,
            characterId: '',

            ui: {
                subrace: '#subrace'
            },

            events: {
                'change @ui.subrace' : 'onSubraceChange'
            },

            onRender: function(){
                this.model = new SubraceModel();
            },

            fetch: function(callback){
                this.model.fetchSubrace({success: _.bind(function(){
                    if(callback)callback();
                },this)});
            },

            setCharacterId: function(id){
                this.model.characterId = id;
                if(this.model.get('id') !== '0') {
                    this.model.fetch();
                }
//                $('#pathContext').val() + '/race/' + this.get('_id') + '/' + this.characterId + '.json';
            },

            onSubraceChange : function(){
                this.model.set('id', this.ui.subrace.val());
                this.model.save(null, {success: _.bind(function(){
                    this.trigger('subraceUpdated');
                }, this)});
            },

            initialize: function(){
            }
        });
        epoxy.View.mixin(view.prototype);
        return view;

    });

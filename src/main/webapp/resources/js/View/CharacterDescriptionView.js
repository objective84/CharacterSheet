/**
 * Created by PVarnerHowland on 9/19/2014.
 */

define("CharacterDescriptionView",
    ["jquery", "underscore", "marionette", "AbilitiesModel", 'epoxy', 'CharacterDescriptionModel'],
    function($, _, marionette, CharacterModel, epoxy, CharacterDescriptionModel) {
        var view = marionette.ItemView.extend({
            el: '#character-sheet',
            model: null,
            characterId: '',

            ui: {
                name: '#name'
            },

            events: {
                'blur @ui.name' : 'saveDescription'
            },

            bindings: {
              '#name': 'value:name'
            },

            onRender: function(){
                this.model = new CharacterDescriptionModel();
                this.applyBindings();
            },

            fetch: function(callback){
                this.model.fetchDescription({success: _.bind(function(){
                    if(callback)callback();
                },this)});
            },

            setCharacterId: function(id){
                this.model.characterId = id;
                if(this.model.get('id') !== '0') {
                    this.fetch();
                }
            },

            saveDescription:function(){
                this.model.save();
            },

            initialize: function(){
            }
        });
        epoxy.View.mixin(view.prototype);
        return view;

    });

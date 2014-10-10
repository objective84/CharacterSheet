/**
 * Created by PVarnerHowland on 8/25/2014.
 */


define("ClassView",
    ["jquery", "underscore", "marionette", "AbilitiesModel", 'jqueryUi', 'epoxy', 'ClassModel'],
    function($, _, marionette, CharacterModel, jqueryUi, epoxy, ClassModel) {
        var view = marionette.ItemView.extend({
            el: '#character-sheet',
            model: null,
            characterId: '',

            ui: {
                clazz: '#class-select',
                description: '#class-description'
            },

            events: {
                'change @ui.clazz' : 'onClassChange',
                'click @ui.description': 'onDescriptionLinkClick'
            },

            onRender: function(){
                this.model = new ClassModel();
            },

            fetch: function(callback){
                this.model.fetchClass({success: _.bind(function(){
                    if(callback)callback();
                    this.ui.clazz.val(this.model.get('id'));
                },this), error: function(model, response) {
                }});
            },

            setCharacterId: function(id){
                this.model.characterId = id;
                if(this.model.get('id') !== '0') {
                    this.model.fetch();
                }
//                $('#pathContext').val() + '/race/' + this.get('_id') + '/' + this.characterId + '.json';
            },

            onClassChange : function(){
                this.model.set('id', this.ui.clazz.val());
                this.model.save(null, {success: _.bind(function(){
                    this.trigger('classUpdated');
                }, this), error: function(model, response) {
                }});
            },

            onDescriptionLinkClick: function(){
                modalOpen('description-modal', 'description-modal');
                $('#description-text').append(this.model.get('description'));
            },

            initialize: function(){
            }
        });
        epoxy.View.mixin(view.prototype);
        return view;

    });

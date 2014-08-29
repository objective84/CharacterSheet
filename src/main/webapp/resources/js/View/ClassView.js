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
                clazz: '#class-select'
            },

            events: {
                'change @ui.clazz' : 'onClassChange'
            },

            onRender: function(){
                this.model = new ClassModel();
            },

            fetch: function(callback){
                this.model.fetchClass({success: _.bind(function(){
                    if(callback)callback();
                    console.log(this.model)
                },this)});
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
                }, this)});
            },

            initialize: function(){
            }
        });
        epoxy.View.mixin(view.prototype);
        return view;

    });

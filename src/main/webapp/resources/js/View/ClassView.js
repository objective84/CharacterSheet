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
                description: '#class-description',
                chooseSubclassLink: "#choose-subclass"
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


            displayChooseSubclassLink: function(){
                this.ui.chooseSubclassLink.show();
                var inputMiddle = getWidthHeightAsFloat(this.ui.clazz.css('width'))/2;
                var linkMiddle = getWidthHeightAsFloat(this.ui.chooseSubclassLink.css('width'))/2;
                this.ui.chooseSubclassLink.css('left', this.ui.clazz.position().left + (inputMiddle - linkMiddle));
                this.ui.chooseSubclassLink.css('top', getWidthHeightAsFloat(this.ui.clazz.css('height')) + 17);
                this.ui.chooseSubclassLink.on('click', _.bind(this.onSubclassSelectLinkClick, this));
            },

            onSubclassSelectLinkClick: function(event){
                modalOpen('empty-modal', 'empty-modal');
                $.getJSON('/CharacterSheet/subclass/select/'+ this.model.get('id') + ".json", null, _.bind(function(data){
                    $('#empty-modal').append(data.data);
                    $('.subclass-selection-btn').on('click', _.bind(this.onSubclassSelectedBtnClick, this));
                }, this));
            },

            onSubclassSelectedBtnClick: function(event){
                var url = "/CharacterSheet/subclass/"+ $("#characterId").val() + "/" + $(event.target).data('subclass-id') + ".json";
                var success = _.bind(function(data){
                    window.location.reload();
                }, this);

                $.ajax({
                    type:"POST",
                    url: url,
                    success: success
                })
            },

            initialize: function(){
            }
        });
        epoxy.View.mixin(view.prototype);
        return view;

    });

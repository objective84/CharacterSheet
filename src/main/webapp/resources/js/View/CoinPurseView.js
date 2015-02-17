/**
 * Created by PVarnerHowland on 8/21/2014.
 */

define("CoinPurseView",
    ["jquery", "underscore", "marionette", "AbilitiesModel", 'jqueryUi', 'epoxy', 'CoinPurseModel'],
    function($, _, marionette, CharacterModel, jqueryUi, epoxy, CoinPurseModel) {
        var view = marionette.ItemView.extend({
            el: '#abilties',
            model: null,

            bindings: {
                '#money-copper': 'value:cp',
                '#money-silver': 'value:sp',
                '#money-electrum': 'value:ep',
                '#money-gold': 'value:gp',
                '#money-platinum': 'value:pp'
            },

            onRender: function(coinPurse){
                this.applyBindings();
            },

            fetchModel: function(){
                this.model.fetch({success: _.bind(function(data){
                    $('#money-platinum').val(this.model.get('pp'))
                    $('#money-gold').val(this.model.get('gp'))
                    $('#money-electrum').val(this.model.get('ep'))
                    $('#money-silver').val(this.model.get('sp'))
                    $('#money-copper').val(this.model.get('cp'))
                }, this)});
            },

            setCharacterId: function(id){
                this.model.characterId = id;
                if(this.model.get('id') !== '0') {
                    this.model.fetch();
                }
            },

            initialize: function(){
                this.model = new CoinPurseModel();
            }
        });
        epoxy.View.mixin(view.prototype);
        return view;

    });

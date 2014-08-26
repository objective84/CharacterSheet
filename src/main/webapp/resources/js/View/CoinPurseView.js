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
                events: {
                    'change model' : 'onModelChanged'
                },

                onRender: function(coinPurse){
                    this.model = new CoinPurseModel();
                    this.applyBindings();
                },

                setCoinPurse: function(coinPurse){
                    this.model.setCoinPurse(coinPurse);
                },

                initialize: function(){
                }
            });
        epoxy.View.mixin(view.prototype);
        return view;

    });

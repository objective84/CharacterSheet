/**
 * Created by PVarnerHowland on 8/21/2014.
 */

define("AbilitiesView",
    ["jquery", "underscore", "marionette", "AbilitiesModel", 'jqueryUi', 'epoxy', 'AbilitiesModel'],
    function($, _, marionette, CharacterModel, jqueryUi, epoxy, AbilitiesModel) {
        var view = marionette.ItemView.extend({
            el: '#abilties',
            model: null,

            maxAbilityPoints: 27,
            maxAbilityScore: 15,
            minAbilityScore: 8,
            abilityPoints: 27,
            abilityScoreText: 'Ability Points: ',

            ui: {
                str: '#Str',
                dex: '#Dex',
                con: '#Con',
                int: '#Int',
                wis: '#Wis',
                cha: '#Cha',
                abilityPointLabel: '#ability-point-label',
                abilityScoreReset: '#ability-score-reset'
            },

            bindings: {
                '#Str': 'value:str',
                '#Dex': 'value:dex',
                '#Con': 'value:con',
                '#Int': 'value:intel',
                '#Wis': 'value:wis',
                '#Cha': 'value:cha'
            },
            events: {
                    'click .ability-change': 'onAbilityChangeButtonClick',
                    'click @ui.abilityScoreReset': 'onAbilityScoreResetClick'
            },

            onRender: function(){
                this.model = new AbilitiesModel();
                this.applyBindings();
            },

            fetch: function(callback){
                if(callback){
                    this.model.fetch({success: callback});
                }else{
                    this.model.fetch();
                }
            },

            onAbilityChangeButtonClick: function(event){
                var ability = $(event.target).prop('id').substr(0,3);
                var $element = $('#' + ability);
                var score = parseInt($element.val());
                if($(event.target).prop('id').indexOf('minus') === -1){
                    var newScore = score + 1;
                    var newPointsVal = this.abilityPoints - this.getAbilityPointCost(newScore);
                    if(newPointsVal < 0 ) return;
                    $element.val(newScore);
                    this.model.set(ability.toLowerCase(), newScore);
                }else{
                    var newScore = score - 1;
                    var newPointsVal = this.abilityPoints + this.getAbilityPointCost(newScore, true);
                    this.model.set(ability.toLowerCase(), newScore);
                }
                this.abilityPoints = newPointsVal;
                if(this.abilityPoints === 0){
                    this.ui.abilityPointLabel.text('');
                }else {
                    this.ui.abilityPointLabel.text(this.abilityScoreText + this.abilityPoints);
                }
                this.showHideAbilityChangeButtons();
                this.setAbilityMods(ability, newScore);
                this.model.save();
            },

            showHideAbilityChangeButtons: function(){
                $('.ability').each(_.bind(function(key, value){
                    var ability = $(value).prop('id');
                    var placeholder = $('#' + ability + '-placeholder');
                    var plus = $('#' + ability + '-plus');
                    var minus = $('#' + ability + '-minus');
                    var points = $(value).val();

                    if(this.canChangeAbility($(value), true)){
                        plus.show();
                    }else{
                        plus.hide();
                    }

                    if(this.canChangeAbility($(value), false)){
                        minus.show();
                    }else{
                        minus.hide();
                    }
                    if(plus.css('display') === 'none' || minus.css('display') === 'none'){
                        placeholder.addClass('show');
                    }else{
                        placeholder.removeClass('show');
                    }
                }, this))
            },

            canChangeAbility: function(ability, increase){
                var score = increase ? parseInt(ability.val()) + 1 : parseInt(ability.val()) - 1;
                var cost = this.getAbilityPointCost(score, false);
                if(increase){
                    return cost <= this.abilityPoints && score <= this.maxAbilityScore;
                }else{
                    return cost + this.abilityPoints <= this.maxAbilityPoints && score >= this.minAbilityScore;
                }
            },

            getAbilityPointCost: function(val, neg){
                if(val === 13 && neg){
                    return 2;
                }
                if(val < 14){
                    return 1;
                }
                if(val <= 16){
                    return 2;
                }

            },

            onAbilityScoreResetClick: function(){
                this.showHideAbilityChangeButtons();
                this.ui.abilityPointLabel.text(this.abilityScoreText + this.maxAbilityPoints);
            },

            setAbilities: function(abilities){
                this.model.setAbilities(abilities);
                this.setAbilityMods();
                this.showHideAbilityChangeButtons();
            },

            setAbilityMods: function(){
                $('.ability').each(_.bind(function(key, value){
                    var mod = getAbilityMod($(value).val());
                    mod = (mod >= 0) ? (' + ' + mod) : (' - ' + Math.abs(mod));
                    $('#'+$(value).attr('id') + "Mod").prop('textContent', mod);
                },this));
            },

            initialize: function(){
            }
        });
        epoxy.View.mixin(view.prototype);
        return view;

    });

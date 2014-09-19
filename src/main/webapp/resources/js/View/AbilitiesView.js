/**
 * Created by PVarnerHowland on 8/21/2014.
 */

define("AbilitiesView",
    ["jquery", "underscore", "marionette", "AbilitiesModel", 'jqueryUi', 'epoxy', 'AbilitiesModel'],
    function($, _, marionette, CharacterModel, jqueryUi, epoxy, AbilitiesModel) {
        var view = marionette.ItemView.extend({
            el: '#character-sheet',
            model: null,
            maxAbilityPoints: 27,
            maxAbilityScore: 15,
            minAbilityScore: 8,
            abilityScoreText: 'Ability Points: ',
            confirmed: true,
            abilityIncrease: false,

            ui: {
                str: '#Str',
                dex: '#Dex',
                con: '#Con',
                int: '#Int',
                wis: '#Wis',
                cha: '#Cha',
                abilityPointLabel: '#ability-point-label',
                abilityScoreReset: '#ability-score-reset',
                abilityConfirm: '#ability-confirm'
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
                'click .ability-change': 'onAbilityIncreaseChange',
                'click @ui.abilityScoreReset': 'onAbilityScoreResetClick'
            },

            fetchAbilities: function(create){
                this.model.fetchAbilities({success: _.bind(function(data){
                    this.confirmed = create ? this.model.get('availableAbilityPoints') === 0: true;
                    this.abilityIncrease = this.model.get('abilityIncreasePoints')> 0;
                    this.showHideAbilityChangeButtons();
                    this.setAbilityMods();
                    this.setAbilityPointLabel();
                }, this)});
            },

            onRender: function(){
                this.applyBindings();
            },

            setAbilityPointLabel:function(){
                if(this.model.get('availableAbilityPoints') === 0){
                    this.ui.abilityPointLabel.text('');
                    if(this.model.get('abilityIncreasePoints' > 0)){
                        this.ui.abilityPointLabel.text(this.abilityScoreText + this.model.get('abilityIncreasePoints'));
                    }
                }else {
                    this.ui.abilityPointLabel.text(this.abilityScoreText + this.model.get('availableAbilityPoints'));
                }
            },

            onAbilityIncreaseChange: function(event){
                if(!this.abilityIncrease)return;
                var ability = $(event.target).prop('id').substr(0,3);
                var $element = $('#' + ability);
                var score = parseInt($element.val());
                var newScore = score + 1;
                var availablePoints = this.model.get('abilityIncreasePoints');
                this.model.set(ability.toLowerCase(), newScore);
                availablePoints--;
                this.model.set('abilityIncreasePoints', availablePoints);
                if(this.model.get('abilityIncreasePoints') === 0){
                    this.abilityIncrease = false;
                }
                this.model.save();
                console.log(this.model);
                this.showHideAbilityChangeButtons();
            },

            onAbilityChangeButtonClick: function(event){
                if(this.abilityIncrease)return;
                var ability = $(event.target).prop('id').substr(0,3);
                var $element = $('#' + ability);
                var score = parseInt($element.val());
                var newPointsVal;
                var newScore;
                if($(event.target).prop('id').indexOf('minus') === -1){
                    newScore = score + 1;
                    newPointsVal = this.model.get('availableAbilityPoints') - this.getNewScoreCost(score, newScore);
                    if(newPointsVal < 0 ) return;
                    $element.val(newScore);
                    this.model.set(ability.toLowerCase(), newScore);
                }else{
                    newScore = score - 1;
                    newPointsVal = this.model.get('availableAbilityPoints') + this.getNewScoreCost(score, newScore);
                    this.model.set(ability.toLowerCase(), newScore);
                }
                this.model.set('availableAbilityPoints', newPointsVal);
                this.setAbilityPointLabel();
                this.showHideAbilityChangeButtons();
                this.setAbilityMods(ability, newScore);
                if(newPointsVal === 0){
                    this.ui.abilityConfirm.show();
                }else{
                    this.ui.abilityConfirm.hide();
                }
                this.model.save();
            },

            showHideAbilityChangeButtons: function(){
                $('.ability').each(_.bind(function(key, value){
                    var ability = $(value).prop('id');
                    var placeholder = $('#' + ability + '-placeholder');
                    var plus = $('#' + ability + '-plus');
                    var minus = $('#' + ability + '-minus');
                    var points = $(value).val();
                    if(this.abilityIncrease){
                        points + 1 <= 20
                        {
                            plus.show();
                            minus.hide();
                        }
                    }else {
                        if (this.canChangeAbility($(value), true) && !this.confirmed) {
                            plus.show();
                        } else {
                            plus.hide();
                        }

                        if (this.canChangeAbility($(value), false) && !this.confirmed) {
                            minus.show();
                        } else {
                            minus.hide();
                        }
                    }
                    if(this.confirmed){
                        placeholder.removeClass('show')
                    }else {
                        if (plus.css('display') === 'none' || minus.css('display') === 'none') {
                            placeholder.addClass('show');
                        } else {
                            placeholder.removeClass('show');
                        }
                    }
                }, this))
            },

            canChangeAbility: function(ability, increase){
                var pointsSpent = this.model.get('pointsSpent');
                var newScore = increase ? parseInt(ability.val()) + 1 : parseInt(ability.val()) - 1;
                if((!increase &&newScore < this.model.get('minAbilityScore')) ||
                    (increase && newScore > this.model.get('maxAbilityScore'))) {
                    return false;
                }

                var cost = this.getNewScoreCost($(ability).val(), newScore);
                if(increase){
                    return cost <= this.model.get('availableAbilityPoints');
                }else{
                    return this.model.get('availableAbilityPoints') - cost <= this.model.get('maxAbilityPoints');
                }
            },

            getNewScoreCost:function(currentScore, newScore){
                var increase = newScore > currentScore;
                var cost = this.getAbilityScoreCost(newScore) - this.getAbilityScoreCost(parseInt(currentScore));
                cost = increase ? cost : 0 - cost;
                return cost;
            },

            getAbilityScoreCost: function(val, increase){
                var cost;
                cost = val - this.model.get('minAbilityScore');
                if(val-13 > 0){
                    cost = cost + val-13;
                }
                return cost;
            },

            onAbilityScoreResetClick: function(){
                this.showHideAbilityChangeButtons();
                this.ui.abilityPointLabel.text(this.abilityScoreText + this.model.get('maxAbilityPoints'));
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
                this.model = new AbilitiesModel();
                this.confirmed = true;
            }
        });
        epoxy.View.mixin(view.prototype);
        return view;

    });

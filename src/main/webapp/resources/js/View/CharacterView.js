define("CharacterView",
    ["jquery", "underscore", "marionette", "CharacterModel", 'jqueryUi'],
    function($, _, marionette, CharacterModel, jqueryUi){
        return marionette.ItemView.extend({
            el: '#character-sheet',
            model: null,
            skillsAllowed: 0,
            languagesAllowed: 0,
            characterRace: null,
            characterClass: null,
            maxAbilityPoints: 27,
            maxAbilityScore: 16,
            minAbilityScore: 8,
            abilityPoints: 27,
            abilityScoreText: ' ability points remaining',

            ui:{
                id: '#id',
                name: '#name',
                race: '#race',
                clazz: '#class-select',
                level: '#level',
                maxHealth: '#maxHealth',
                currentHealth: '#currentHealth',
                str: '#Str',
                dex: '#Dex',
                con: '#Con',
                conMod: '#ConMod',
                int: '#Int',
                intMod: '#IntMod',
                wis: '#Wis',
                cha: '#Cha',
                skillProficiencies: '#skillProfs',
                toolProficiencies: '#toolProfs',
                weaponProficiencies: '#weaponProfs',
                armorProficiencies: '#armorProfs',
                saveProficiencies: '#saveProfs',
                languages: '#languages',
                skillSelectLabel: '#skill-select-label',
                languageModal: '#language-modal',
                languageSubmit: '#language-submit',
                abilityPointLabel: '#ability-point-label',
                abilityScoreReset: '#ability-score-reset'
            },

            bindings:{

            },

            events:{
                'change .ability' : 'onAbilityUpdate',
                'change @ui.clazz': 'onClassChange',
                'change @ui.race' : 'onRaceChange',
                'click @ui.languageSubmit' : 'onLanguageSubmitClick',
                'click .ability-change': 'onAbilityChangeButtonClick',
                'click @ui.abilityScoreReset': 'onAbilityScoreResetClick'
            },

            onRender: function(){
                var id;
                this.ui.languageSubmit.on('click', _.bind(this.onLanguageSubmitClick, this));
                this.ui.abilityPointLabel.text(this.abilityPoints + this.abilityScoreText);
                this.setAbilityMods();
            },

            setAbilityMods: function(){
                $('.ability').each(_.bind(function(key, value){
                    this.setAbilityMod($(value).attr('id'), $(value).val());
                },this));
            },

            onAbilityUpdate: function(event){
                var id = $(event.target).attr('id');
                this.setAbilityMod(id, $(event.target).val());
                if($(event.target).prop('id') == this.ui.con.prop('id')){
                    this.setMaxHealth();
                }else if($(event.target).prop('id') === this.ui.int.prop('id')){
                    this.setLanguagesAllowed();
                    this.setLanguageSelect();
                }
            },

            setLanguagesAllowed: function(){
                this.languagesAllowed = this.getAbilityMod(this.ui.int.val()) - $('.language-row').length;
                if(this.characterRace){
                    this.languagesAllowed = this.languagesAllowed + this.characterRace.languages.length;
                }
            },

            setAbilityMod: function(id, val){
                var mod = this.getAbilityMod(val)
                mod = (mod >= 0) ? (' + ' + mod) : (' - ' + Math.abs(mod));
                $('#'+id + "Mod").prop('textContent', mod);
            },

            getAbilityMod: function(score){
                return (parseInt(score) === 0) ? 0: parseInt(Math.floor(( score - 10) / 2));
            },

            onClassChange: function(event){
                if($(event.target).val() === '0'){
                    $('.proficiency-row').remove();
                    this.skillsAllowed = 0;
                    this.setSkillsToSelect();
                    this.class = null;
                }else {
                    $.getJSON("class.json", 'classId=' + this.ui.clazz.val(), _.bind(function (data) {
                        this.characterClass = data;
                        this.skillsAllowed = data.skillsAtCreation;
                        this.setProficiencies();
                        this.setMaxHealth();
                    }, this));
                }
            },

            onRaceChange: function(event){
                if($(event.target).val() === '0') {
                    $('.language-row').remove();
                    this.characterRace = null;
                }else{
                    $.getJSON("race.json", 'raceId=' + this.ui.race.val(), _.bind(function (data) {
                        this.characterRace = data;
                        this.setLanguages(data.languages);
                    }, this));
                }
            },

            setProficiencies: function(){
                $(this.characterClass.proficiencies).each(_.bind(function(key, value){
                    var $element;
                    switch(value.type){
                        case 'SKILL':
                            $element = this.ui.skillProficiencies;
                            break;
                        case 'TOOL':
                            $element = this.ui.toolProficiencies;
                            break;
                        case 'WEAPON':
                            $element = this.ui.weaponProficiencies;
                            break;
                        case 'ARMOR':
                            $element = this.ui.armorProficiencies;
                            break;
                        case 'SAVING_THROW':
                            $element = this.ui.saveProficiencies;
                            break;
                    }
                    if(value.type === 'SKILL'){
                        $element.append('<tr class="proficiency-row"><td><input name="proficiencies" class="proficiency skill" type="checkbox" value="' + value.id + '">' + value.name + '</input></td>')

                    }else {
                        $element.append('<tr class="proficiency-row"><td><input name="proficiencies" type="hidden" value="' + value.id + '">' + value.name + '</input></td>')
                    }
                },this))

                $('.proficiency.skill').on('click', _.bind(this.onSkillCheckboxClick,this));
                this.setSkillsToSelect();
            },

            removeProficiencies: function(){
                $('table.proficiencies').each(function(key, value){
                    debugger;
                    $(value).remove('.proficiency-row');
                });
            },

            removeLanguages: function(){

            },

            onSkillCheckboxClick: function(event){
                if($(event.target).attr('checked') !== 'checked'){
                    this.skillsAllowed++;
                    this.setSkillsToSelect();
                }else {
                    if (this.skillsAllowed > 0) {
                        this.skillsAllowed--;
                        this.setSkillsToSelect()
                    } else {
                        this.setSkillsToSelect();
                    }
                }
            },

            setLanguages: function(){
                $(this.characterRace.languages).each(_.bind(function(key, value){
                    this.ui.languages.append('<tr class="language-row"><td><input name="languages" type="hidden" value="' + value.id + '">' + value.name + '</input></td>')
                }, this));
            },

            setMaxHealth: function(hitDie){
                $.getJSON("dice.json", 'dieType='+hitDie, _.bind(function(data){
                    this.ui.maxHealth.val(data.maxValue + this.getAbilityMod(this.ui.con.val()));
                    this.ui.currentHealth.val(this.ui.maxHealth.val());
                }, this));
            },

            setSkillsToSelect: function(){
                if(this.skillsAllowed > 0){
                    this.ui.skillSelectLabel.text('Choose ' + this.skillsAllowed + ' skill ' + (this.skillsAllowed === 1 ? 'proficiency' : 'proficiencies'));
                }else{
                    this.ui.skillSelectLabel.text('');
                }
                this.enableDisableSkillCheckboxes();
            },

            enableDisableSkillCheckboxes: function(){
                var disabled = this.skillsAllowed > 0;
                $('.proficiency.skill').each(_.bind(function(key, value) {
                    if (!disabled){
                        if($(value).prop('checked')){
                            $(value).removeAttr('disabled');
                        }else{
                            $(value).attr('disabled', 'disabled');
                        }
                    }else{
                        $(value).removeAttr("disabled");
                    }
                }, this));
            },

            setLanguageSelect: function(){
                $('.language-select-row').remove();
                this.setLanguagesAllowed();
                for(var i=0; i<this.languagesAllowed; i++){
                    $('#languages').append('<tr class="language-select-row"><td><a href="#" class="language-select" id="language-select_"' + i + '>Select a language</a></td></tr>');
                }
                $('.language-select').on('click', _.bind(this.onLanguageSelectClick, this));
            },

            onLanguageSelectClick: function(){
                this.modalOpen('language-modal', 'language-modal');
            },

            onLanguageSubmitClick: function(event){
                var language = $("input[name=language-option]:checked").val();
                this.modalClose('language-modal');
                $('#languages').append(
                        '<tr id="language-row-' + language + '" class="language-row"><td><input name="languages"  type="hidden" value="' + language.id + '">' + language + '</input>' +
                        '<a class="minus-sign link-small" id="' + language + '" href="#">Remove</a></td></tr>');
                this.setLanguageSelect();
                $('#' + language).on('click', _.bind(this.removeLanguage, this));
            },

            removeLanguage: function(event){
                $('#language-row-' + $(event.target).prop('id')).remove();
                this.setLanguagesAllowed();
                this.setLanguageSelect();
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
                }else{
                    var newScore = score - 1;
                    var newPointsVal = this.abilityPoints + this.getAbilityPointCost(newScore, true);
                    $element.val(newScore);
                }
                this.abilityPoints = newPointsVal;
                if(this.abilityPoints === 0){
                    this.ui.abilityPointLabel.text('');
                }else {
                    this.ui.abilityPointLabel.text(this.abilityPoints + this.abilityScoreText);
                }
                this.showHideAbilityChangeButtons();
                this.setAbilityMod(ability, newScore);
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

            canChangeAbility: function(ability, increase){
                var score = increase ? parseInt(ability.val()) + 1 : parseInt(ability.val()) - 1;
                var cost = this.getAbilityPointCost(score, false);
                if(increase){
                    return cost <= this.abilityPoints && score <= this.maxAbilityScore;
                }else{
                    return cost + this.abilityPoints <= this.maxAbilityPoints && score >= this.minAbilityScore;
                }
            },

            showHideAbilityChangeButtons: function(neg){
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

            onAbilityScoreResetClick: function(){
                this.ui.str.val(this.minAbilityScore);
                this.ui.dex.val(this.minAbilityScore);
                this.ui.con.val(this.minAbilityScore);
                this.ui.int.val(this.minAbilityScore);
                this.ui.wis.val(this.minAbilityScore);
                this.ui.cha.val(this.minAbilityScore);
                this.setAbilityMods();
                this.showHideAbilityChangeButtons();
                this.ui.abilityPointLabel.text(this.maxAbilityPoints + this.abilityScoreText);
            },

            modalOpen: function(type, key) {
                var modal_width = 540;
                var modal_height = 'auto';
                var additionalModalOpenFn;

                switch (type) {
                    case 'language-modal':
                        modal_width = 200;
                        modal_height = 'auto';
                        break;
                    default:
                        modal_width = 380;
                        modal_height = 'auto';
                        break;
                }

                // create base modal dialog window
                var poundKey = $('#' + key);
                poundKey.dialog({
                    bgiframe : true,
                    autoOpen : false,
                    resizable : false,
                    width : modal_width,
                    minHeight : 190,
                    show : 'fade',
                    hide : 'fade',
                    zIndex : 2000,
                    position : {
                        my : 'top',
                        at : 'top',
                        offset : '0 52'
                    },
                    modal : true,
                    stack : false,
                    closeOnEscape : false,
                    open : _.bind(function(e, ui) {
                        if (additionalModalOpenFn)
                            additionalModalOpenFn($(this));

                        window.setTimeout(function() {
                            jQuery(document).unbind('mousedown.dialog-overlay').unbind('mouseup.dialog-overlay');
                        }, 100);
                        $(".ui-dialog-titlebar").hide();
                        $(".ui-dialog-titlebar-close").hide();

                        $('.ui-widget-overlay').click(function() {
                            $('#' + key).dialog("close");
                        });
                    }, this),
                    close : function() {
                        // do nothing
                    }
                });
                poundKey.dialog('open').height(modal_height);
            },

            modalClose: function(key) {
                // close modal dialog window
                $('#' + key).dialog("close");

                return false;
            }


        });
    })
;

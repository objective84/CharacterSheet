define("CharacterView",
    ["jquery", "underscore", "marionette", "CharacterModel", 'jqueryUi'],
    function($, _, marionette, CharacterModel, jqueryUi){
        return marionette.ItemView.extend({
            el: '#character-sheet',
            model: null,
            skillsAllowed: 0,
            languagesAllowed: 0,
            character: null,
            maxAbilityPoints: 27,
            maxAbilityScore: 16,
            minAbilityScore: 8,
            abilityPoints: 27,
            abilityScoreText: 'Ability Points: ',

            ui:{
                id: '#characterId',
                name: '#name',
                race: '#race',
                clazz: '#class-select',
                level: '#level',
                ac: '#armor-class',
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
                abilityScoreReset: '#ability-score-reset',
                startingWealthLabel: '#starting-wealth-label',
                copperInput: '#money-copper',
                silverInput: '#money-silver',
                electrumInput: '#money-electrum',
                goldInput: '#money-gold',
                platinumInput: '#money-platinum',
                storeLink: '#store-link',
                storeSubmit: '#store-submit',
                clearInventory: '#clear-inventory',
                equipMain: '#main-select',
                equipOff: '#off-select',
                equipArmor: '#armor-select',
                weaponTable: '#weapon-inventory-table',
                armorTable: '#armor-inventory-table'
            },

            bindings:{

            },

            events:{
                'change .ability' : 'onAbilityUpdate',
                'change @ui.clazz': 'onClassChange',
                'change @ui.race' : 'onRaceChange',
                'click @ui.languageSubmit' : 'onLanguageSubmitClick',
                'click .ability-change': 'onAbilityChangeButtonClick',
                'click @ui.abilityScoreReset': 'onAbilityScoreResetClick',
                'click @ui.storeLink': 'onStoreLinkClick',
                'click @ui.clearInventory': 'onClearLinkClick',
                'change @ui.equipMain': 'onEquipMainChange',
                'change @ui.equipOff': 'onEquipOffChange',
                'change @ui.equipArmor': 'onEquipArmorChange'


            },

            onRender: function(){
                var id;
                this.ui.languageSubmit.on('click', _.bind(this.onLanguageSubmitClick, this));
                this.ui.storeSubmit.on('click', _.bind(this.onStoreSubmitClick, this));
                this.ui.abilityPointLabel.text(this.abilityScoreText + this.abilityPoints);
                this.setAbilityMods();
                this.setCharacter();
            },

            setCharacter: function(){
                $.getJSON("character.json", 'characterId=' + this.ui.id.val(), _.bind(function (data) {
                    console.log(data);
                    this.character = data;
                    this.setAC();
                }, this));
            },

            setAC: function(){
                if(this.character.equippedArmor){
                    var armor = this.character.equippedArmor;
                    this.ui.ac.val(armor.armorClass + this.getAbilityMod(this.ui.dex.val()) - armor.maxDexModifier);
                }
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
                if(this.character.race){
                    this.languagesAllowed = this.languagesAllowed + this.character.race.languages.length;
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
                    this.character.clazz = null;
                }else {
                    var data = {
                        'characterId': this.character.id + '',
                        'classId': this.ui.clazz.val() + ''
                    };
                    $.getJSON("class.json", data, _.bind(function (character) {
                        console.log(character)
                        this.character = character;
                        this.setProficiencies();
                        this.setMaxHealth();
                        this.setCoinPurse();
                    }, this));
                }
            },

            onRaceChange: function(event){
                if($(event.target).val() === '0') {
                    $('.language-row').remove();
                    this.character.race = null;
                }else{
                    $.getJSON("race.json", 'raceId=' + this.ui.race.val(), _.bind(function (data) {
                        this.character.race = data;
                        this.setLanguages(data.languages);
                    }, this));
                }
            },

            setCoinPurse: function(){
                var purse = this.character.coinPurse;
                this.ui.copperInput.val(purse.cp);
                this.ui.silverInput.val(purse.sp);
                this.ui.electrumInput.val(purse.ep);
                this.ui.goldInput.val(purse.gp);
                this.ui.platinumInput.val(purse.pp);
            },

            setProficiencies: function(){
                this.skillsAllowed = this.character.clazz.skillsAtCreation;
                $(this.character.clazz.proficiencies).each(_.bind(function(key, value){
                    var $element;
                    switch(value.proficiencyType){
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
                    if(value.proficiencyType === 'SKILL'){
                        $element.append('<tr class="proficiency-row"><td>' + '<input name="proficiencies" class="proficiency skill" type="checkbox" value="' + value.id + '">' + value.name + '</input></td>')
                    }else {
                        $element.append('<tr class="proficiency-row"><td>' +
                            '<input name="proficiencies" type="hidden" value="' + value.id + '">'
                            + value.name + '</input></td>')
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
                if($(event.target).prop('checked') !== true){
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
                $(this.character.race.languages).each(_.bind(function(key, value){
                    this.ui.languages.append('<tr class="language-row"><td><input name="languages" type="hidden" value="' + value.id + '">' + value.name + '</input></td>')
                }, this));
            },

            setMaxHealth: function(){
                this.ui.maxHealth.val(this.character.maxHealth);
                this.ui.currentHealth.val(this.ui.maxHealth.val());
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
                    $('#languages').append('<tr class="language-select-row"><td><a href="#" ' +
                        'class="language-select" id="language-select_"' + i + '>Select a language</a></td></tr>');
                }
                $('.language-select').on('click', _.bind(this.onLanguageSelectClick, this));
            },

            onLanguageSelectClick: function(){
                this.modalOpen('language-modal', 'language-modal');
            },

            onStoreLinkClick: function(){
                this.modalOpen('store-modal', 'store-modal');
            },

            onLanguageSubmitClick: function(event){
                var language = $("input[name=language-option]:checked").val();
                this.modalClose('language-modal');
                $('#languages').append(
                        '<tr id="language-row-' + language + '" class="language-row"><td><input name="languages"  type="hidden" value="'
                        + language.id + '">' + language + '</input>' + '<a class="minus-sign link-small" id="'
                        + language + '" href="#">Remove</a></td></tr>');
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
                    this.ui.abilityPointLabel.text(this.abilityScoreText + this.abilityPoints);
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
                this.ui.abilityPointLabel.text(this.abilityScoreText + this.maxAbilityPoints);
            },

            rollDice: function(die, amt){
                var totalRoll = 0;
                for(var i=0; i<amt; i++){
                    totalRoll += Math.floor(Math.random() * die.maxRoll) + die.minRoll;
                }
                return totalRoll;
            },

            onStoreSubmitClick: function(){
                var items = [];
                $(this.character.inventory).each(function(key, value){
                    items.push(value.id + '');
                });
                $('.store-item').each(_.bind(function(key, value){
                    if($(value).prop('checked')) {
                        items.push($(value).val());
                    }
                }, this));

                var data = {charId: this.character.id,
                    equipmentIds: items};

                $.getJSON('equipment.json', "ids=" + JSON.stringify(data), _.bind(function(data){
                    if(data.code === 1) {
                        this.character = data.data;
                        this.setInventory();
                        this.modalClose('store-modal');
                        alert(data.message);
                    }else if(data.code === 0){
                        alert(data.errorMessage);
                    }
                }, this));
            },

            setInventory: function(){
                $('tr.inventory-item').remove();
                $(this.character.inventory).each(_.bind(function(key, value){
                    var item = this.findItemInInventory(value.id);
                    var $element;
                    if(item.maxWeaponRange !== undefined) {
                        $element = this.ui.weaponTable;
                    }else if(item.armorClass !== undefined){
                        $element = this.ui.armorTable;
                    }
                    $element.append('<tr class="inventory-item" ><td><span name="inventory>" value="' + item.id + '">' + item.name + '</span></td></tr>')
                }, this))
                this.setMainHandOptions();
                this.setOffHandOptions();
                this.setArmorOptions();
            },

            findItemInInventory: function(id){
                for(var i=0; i < this.character.inventory.length; i++){
                    if(this.character.inventory[i].id === id){
                        return this.character.inventory[i];
                    }
                }
            },

            setMainHandOptions: function(){
                $('.main-hand-option').remove();
                $.getJSON('main-hand.json', "characterId=" + this.character.id, _.bind(function(data){
                    $(data).each(_.bind(function(key, value){
                        this.ui.equipMain.append('<option class="main-hand-option" value="' + value.id + '">' + value.name + '</option>')
                    }, this));
                }, this));
            },

            setOffHandOptions: function(){
                $('.off-hand-option').remove();
                $.getJSON('off-hand.json', "characterId=" + this.character.id, _.bind(function(data){
                    $(data).each(_.bind(function(key, value){
                        this.ui.equipOff.append('<option class="off-hand-option" value="' + value.id + '">' + value.name + '</option>')
                    }, this));
                }, this));
            },

            setArmorOptions: function(){
                $('.armor-option').remove();
                $.getJSON('armor.json', "characterId=" + this.character.id, _.bind(function(data){
                    $(data).each(_.bind(function(key, value){
                        this.ui.equipArmor.append('<option class="armor-option" value="' + value.id + '">' + value.name + '</option>')
                    }, this));
                }, this));
            },

            onClearLinkClick: function(){
                var data = {charId: this.character.id,
                    equipmentIds: []};

                $.getJSON('equipment.json', "ids=" + JSON.stringify(data), _.bind(function(data){
                    this.character = data;
                }, this));
            },

            onEquipMainChange: function(){
                var data = {
                    "characterId": this.character.id,
                    "itemId": this.ui.equipMain.val()
                };
                $.getJSON('equip-main-hand.json', data, _.bind(function(data){
                    this.character = data;
                }, this));
            },

            onEquipOffChange: function(){
                var data = {
                    "characterId": this.character.id,
                    "itemId": this.ui.equipOff.val()
                };
                $.getJSON('equip-off-hand.json', data, _.bind(function(data){
                    this.character = data;
                }, this));
            },

            onEquipArmorChange: function(){
                var data = {
                    "characterId": this.character.id,
                    "itemId": this.ui.equipArmor.val()
                };
                $.getJSON('equip-armor.json', data, _.bind(function(data){
                    this.character = data;
                    this.setAC();
                }, this));
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
                    case 'store-modal':
                        modal_width = 'auto';
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




//var success =  _.bind(function(data){
//    console.log(data);
//}, this);
//
//var error = function(xhr, textStatus, errorThrown) {
//    console.log('request failed' + errorThrown);
//}

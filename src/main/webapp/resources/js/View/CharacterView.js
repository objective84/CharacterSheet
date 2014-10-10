//var success =  _.bind(function(data){
//    console.log(data);
//}, this);
//
//var error = function(xhr, textStatus, errorThrown) {
//    console.log('request failed' + errorThrown);
//}




define("CharacterView",
    ["jquery", "underscore", "marionette", "CharacterModel", 'jqueryUi', 'epoxy', 'AbilitiesView', 'CoinPurseView', 'RaceView', 'SubraceView', 'ClassView', 'CharacterDescriptionView'],
    function($, _, marionette, CharacterModel, jqueryUi, epoxy, AbilitiesView, CoinPurseView, RaceView, SubraceView, ClassView, CharacterDescriptionView){
        var view = marionette.ItemView.extend({
            el: '#character-sheet',
            model: null,
            skillsAllowed: 0,
            languagesAllowed: 0,
            character: null,

            abilitiesView: null,
            coinPurseView: null,
            raceView: null,
            subraceView: null,
            classView: null,
            descriptionView: null,
            pathContext: $('#pathContext').val(),
            abilitiesConfirmed: false,

            ui:{
                id: '#characterId',
                name: '#name',
                race: '#race',
                clazz: '#class-select',
                level: '#level',
                ac: '#armor-class',
                maxHealth: '#maxHealth',
                currentHealth: '#currentHealth',
                skillProficiencies: '#skillProfs',
                toolProficiencies: '#toolProfs',
                weaponProficiencies: '#weaponProfs',
                armorProficiencies: '#armorProfs',
                saveProficiencies: '#saveProfs',
                languages: '#languages',
                skillSelectLabel: '#skill-select-label',
                languageModal: '#language-modal',
                languageSubmit: '#language-submit',
                storeLink: '#store-link',
                storeSubmit: '#store-submit',
                clearInventory: '#clear-inventory',
                equipMain: '#main-select',
                equipOff: '#off-select',
                equipArmor: '#armor-select',
                storeWeaponTable: '#weapon-inventory-table',
                storeArmorTable: '#armor-inventory-table',
                subrace: '#subrace',
                encumberedLabel: '#encumbered-label',
                speed: '#speed',
                testSpell: "#test-spell",
                addSpellsLink: "#add-spells",
                allSpells: "#all-spells",
                abilityConfirm: '#ability-confirm',
                levelCharacterL: "#level-character"
            },

            bindings:{
                '#armor-class': 'value:armorClass',
                '#maxHealth': 'value:maxHealth',
                '#currentHealth': 'value:currentHealth'
            },

            events:{
                'change @ui.race' : 'onRaceChange',
                'click @ui.languageSubmit' : 'onLanguageSubmitClick',
                'click @ui.storeLink': 'onStoreLinkClick',
                'click @ui.clearInventory': 'onClearLinkClick',
                'change @ui.equipMain': 'onEquipMainChange',
                'change @ui.equipOff': 'onEquipOffChange',
                'change @ui.equipArmor': 'onEquipArmorChange',
                'click #fetch-character' : 'fetchModel',
                'click @ui.testSpell' : 'onSpellClick',
                'click @ui.addSpellsLink': 'onLearnSpellsLinkClick',
                'click @ui.allSpells': 'onAllSpellsLinkClick',
                'click @ui.abilityConfirm': 'onAbilityConfirmClick',
                'change .proficiency.skill': 'onSkillProficiencySelected',
                'click @ui.levelCharacter': 'onLevelCharacterBtnClick'
            },

            onRender: function(){
                this.setCharacter();
                $('#character-sheet').on('classUpdated', function(){
                    alert("class changed");
                })
            },

            fetchModel: function(callback){
                this.model.fetch({success: _.bind(function(){
                    if(callback) callback();
                }, this)});
            },

            setCharacter: function(){
                this.model = new CharacterModel({_id: this.ui.id.val()});
                this.applyBindings();

                this.model.fetch({success: _.bind(function(){
                    if(this.model.get('spellSlots') != null){
                        $('#spell-slots').append(this.model.get('spellSlots').tableHtml);
                    }
                    this.abilitiesView = new AbilitiesView();
                    this.model.set('abilities', this.abilitiesView.model);
                    this.abilitiesView.model.characterId = this.model.get('id');
                    this.abilitiesView.fetchAbilities(true);
                    this.abilitiesView.render();
                    this.listenTo(this.abilitiesView, 'updateAbilities', _.bind(this.abilitiesView.fetchAbilities, this.abilitiesView));

                    this.descriptionView = new CharacterDescriptionView();
                    this.model.set('description', this.descriptionView.model);
                    this.descriptionView.setCharacterId(this.model.get('id'));
                    this.descriptionView.render();

                    this.coinPurseView = new CoinPurseView();
                    this.model.set('coinPurse', this.coinPurseView);
                    this.coinPurseView.setCharacterId(this.model.get('id'));
                    this.coinPurseView.render();

                    this.raceView = new RaceView();
                    this.raceView.render();
                    this.raceView.setCharacterId(this.model.get('id'));
                    if(this.model.get('race')){
                        this.raceView.model.set('id', this.model.get('race').id);
                    }
                    this.raceView.fetch(_.bind(function(){
                        this.model.race = this.raceView.model;
                    },this));
                    this.listenTo(this.raceView, 'raceUpdated', _.bind(this.
                        onRaceUpdated, this));

                    this.subraceView = new SubraceView();
                    this.subraceView.render();
                    this.subraceView.setCharacterId(this.model.get('id'));
                    if(this.model.get('subrace'))this.subraceView.model.set('id', this.model.get('subrace').id);
                    this.subraceView.fetch(_.bind(function(){
                        this.model.race = this.raceView.model;
                    },this));
                    this.listenTo(this.subraceView, 'subraceUpdated', _.bind(this.onSubraceUpdated, this));

                    this.classView = new ClassView();
                    this.classView.render();
                    this.classView.setCharacterId(this.model.get('id'));
                    if(this.model.get('clazz'))this.classView.model.set('id', this.model.get('clazz').id);
                    this.classView.fetch(_.bind(function(){
                        this.model.clazz = this.classView.model;
                    },this));
                    this.listenTo(this.classView, 'classUpdated', _.bind(this.onClassUpdated, this));

                    this.displaySpellsKnown();
                }, this)});
            },

            onLevelCharacterBtnClock: function(){
              modalOpen('level-options', 'level-options');
            },

            displaySpellsKnown: function(){
                $('.spells-known-table').each(function(key, value){
                    $(value).find('tr:gt(0)').remove();
                })
                $('#spells-prepared tr').remove();
                $(this.model.get('spellsKnown')).each(_.bind(function(key, spell){
                    var $table = $('#level-' + spell.level +'-spells');
                    var spellLink = '<tr><td><a class="known-spell" id="known-spell-'+ spell.id + '" href="javascript:void(0);" data-spellid="' +
                        spell.id + '">' + spell.name + '</a></td></tr>';
                    $table.append(spellLink);
                    if(this.model.get('preparedSpells').indexOf(spell.id) !== -1){
                        spellLink = '<tr id="prepared-spell-'+ spell.id + '"><td><a class="prepared-spell"  href="javascript:void(0);" data-spellid="' +
                            spell.id + '">' + spell.name + '</a></td></tr>';
                        $('#spells-prepared').append(spellLink);
                    }
                },this));
                $('.known-spell, .prepared-spell').on('click', _.bind(this.onSpellClick,this));
            },

            onRaceUpdated: function(){
                this.model.fetch({success: _.bind(function(){
                    this.abilitiesView.fetchAbilities();
                    this.setProficiencies();
                    this.setLanguageTable();
                    this.setLanguageSelectionLink();
                }, this)});
            },

            onSubraceUpdated: function(){
                this.model.fetch({success: _.bind(function(){
                    this.abilitiesView.fetchAbilities();
                    this.setProficiencies();
                }, this)});
            },

            onClassUpdated: function(){
                this.model.fetch({success: _.bind(function(){
                    this.skillsAllowed = 0;
                    this.setSkillProficienciesOptions();
                    this.setProficiencies();
                    this.coinPurseView.fetchModel();
                    if(this.model.get('clazz').magicAbility != null) {
                        $('#spell-slots').append(this.model.get('spellSlots').tableHtml);
                        this.ui.addSpellsLink.show();
                    }
                }, this)})
            },

            onSkillProficiencySelected: function(event){
                var url;
                if($(event.target).prop('checked') === true){
                    url = 'character/addSkill/'+this.model.get('id') + '/' + $(event.target).val() + '.json';
                }else{
                    url = 'character/addSkill/'+this.model.get('id') + '/' + $(event.target).val() + '.json';
                }
                $.getJSON(url);
            },

            setAC: function(){
                if(this.model.get('equippedArmor')){
                    var armor = this.model.get('equippedArmor');
                    var dexMod = getAbilityMod(this.ui.dex.val());
                    if(dexMod > armor.maxDexModifier){
                        dexMod = armor.maxDexModifier;
                    }

                    this.ui.ac.val(armor.armorClass + dexMod);
                }
            },

            setTraits: function(){
                for(var i= 0; i< this.model.get('traits'); i++){
                    this.ui.traits.append("<tr><td>" + this.model.get('traits')[i].name + "</td></tr>");
                }
            },

            /// *** Race and Subrace *** ///

            onSubraceChange : function(){
                var data = {
                    'characterId': this.model.get('id') + '',
                    'subraceId': this.ui.subrace.val() + ''
                };
                $.getJson(this.pathContext+ "/subrace.json", data, _.bind(function (data) {
                    this.model.fetch();
                }, this));
            },

            /// *** Skills and Proficiencies *** ///

            setProficiencies: function(){
                $('.proficiency-row').remove();
                if(this.model.get('race') != null) {
                    this.setRaceProficiencies();
                }
                if(this.model.get('clazz') != null) {
                    this.setClassProficiencies();
                }
            },

            setClassProficiencies: function(){
                this.skillsAllowed = this.model.get('clazz').skillsAtCreation;
                $(this.model.get('clazz').proficiencies).each(_.bind(function(key, value){
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
                        case 'SAVE':
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
                },this));

                $('.proficiency.skill').on('click', _.bind(this.onSkillCheckboxClick,this));
                this.setSkillProficienciesOptions();
            },

            setRaceProficiencies: function(){
                var proficiencies = []
                $(this.raceView.model.get('proficiencies')).each(_.bind(function(key, value){
                    proficiencies.push(value);
                }, this));
                if(this.model.get('subrace') != null) {
                    $(this.model.get('subrace').proficiencies).each(_.bind(function (key, value) {
                        proficiencies.push(value);
                    }, this));
                }
                $(proficiencies).each(_.bind(function(key, value){
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
                        case 'SAVE':
                            $element = this.ui.saveProficiencies;
                            break;
                    }
                    $element.append('<tr class="proficiency-row"><td>' +
                        '<input name="proficiencies" type="hidden" value="' + value.id + '">'
                        + value.name + '</input></td>')
                },this))

                $('.proficiency.skill').on('click', _.bind(this.onSkillCheckboxClick,this));
                this.setSkillProficienciesOptions();
            },

            removeProficiencies: function(){
                $('table.proficiencies').each(function(key, value){
                    $(value).remove('.proficiency-row');
                });
            },

            removeLanguages: function(){

            },

            onSkillCheckboxClick: function(event){
                if($(event.target).prop('checked') !== true){
                    this.skillsAllowed++;
                    this.setSkillProficienciesOptions();
                }else {
                    if (this.skillsAllowed > 0) {
                        this.skillsAllowed--;
                        this.setSkillProficienciesOptions()
                    } else {
                        this.setSkillProficienciesOptions();
                    }
                }
            },

            setSkillProficienciesOptions: function(){
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

            /// *** Languages *** ///

//            setLanguagesAllowed: function(){
//                this.languagesAllowed = getAbilityMod(this.ui.int.val()) - $('.language-row').length;
//                if(this.model.get('race')){
//                    this.languagesAllowed = this.languagesAllowed + this.model.get('race').languages.length;
//                }
//            },

            setLanguageTable: function(){
                $('.language-row').remove();
                $(this.model.get('languages')).each(_.bind(function(key, value){
                    $('#languages').append('<tr class="language-row"><td><input name="languages" type="hidden" value="' + value.id + '">' + value.name + '</input></td>')
                }, this));
            },

            setLanguageSelectionLink: function(){
                $('.language-select-row').remove();
                this.languagesAllowed = setLanguagesAllowed(this.model);
                for(var i=0; i<this.languagesAllowed; i++){
                    $('#languages').append('<tr class="language-select-row"><td><a href="#" ' +
                        'class="language-select" id="language-select_"' + i + '>Select a language</a></td></tr>');
                }
                $('.language-select').on('click', _.bind(this.onLanguageSelectClick, this));
            },

            removeLanguage: function(event){
                $('#language-row-' + $(event.target).prop('id')).remove();
                this.languagesAllowed = setLanguagesAllowed(this.model);
                this.setLanguageSelectionLink();
            },

            onLanguageSelectClick: function(){
                this.modalOpen('language-modal', 'language-modal');
            },

            onLanguageSubmitClick: function(event){
                var language = $("input[name=language-option]:checked").val();
                this.modalClose('language-modal');
                $('#languages').append(
                        '<tr id="language-row-' + language + '" class="language-row"><td><input name="languages"  type="hidden" value="'
                        + language.id + '">' + language + '</input>' + '<a class="minus-sign link-small" id="'
                        + language + '" href="#">Remove</a></td></tr>');
                this.setLanguageSelectionLink();
                $('#' + language).on('click', _.bind(this.removeLanguage, this));
            },

            /// ** Inventory and Store *** ///

            onStoreLinkClick: function(){
                this.modalOpen('store-modal', 'store-modal');
                $('.filter').on('change', _.bind(this.onStoreFilterSelected, this));
                $('#store-submit').off();
                $('#store-submit').on('click', _.bind(this.onStoreSubmitClick, this));
            },

            onStoreFilterSelected: function(event){
                var filter = $(event.target).prop('checked') === true ? "true" : "false";
                var data = {
                    characterId: this.model.get('id'),
                    filter: filter
                };
                $.getJson(this.pathContext+ "/filterEquipmentByProficiency.json", data, _.bind(function(data){
                    $('.store-item-row').remove();
                    console.log(data);
                    $(data.data).each(_.bind(function(key, value){
                        if(value.weaponRange){
                            this.addWeaponToStore(value);
                        }else if(value.armorClass){
                            this.addArmorToStore(value);
                        }
                    }, this));
                }, this));
            },

            addWeaponToStore: function(weapon){
                this.ui.storeWeaponTable.append("<tr class='store-item-row'><td><input type='checkbox' name='store-item' class='store-item' id='item_" + weapon.id + "' value='"+
                    weapon.id + "'>" + "<span>"+ weapon.name + "</span></td><td><span>"+ weapon.numberOfDice +  weapon.damageDice.name+ "</span></td>" +
                    "<td><span>" + weapon.price + weapon.priceDenomination.abbr + "</span></td><td><span>" + weapon.itemWeight + "</span></td></tr>");
            },

            addArmorToStore: function(armor){
                var append = "<tr class='store-item-row'><td><input type='checkbox' name='store-item' class='store-item' id='item_" + armor.id+ "' " +
                    "value='" + armor.id+ "'><span>" + armor.name+ "</span></td><td><span>" + armor.armorClass+ "</span></td><td><span>" +
                    armor.strength+ "</span></td><td><span>" + (armor.stealthDisadvantage == true ? 'Yes' : '')+ "</span></td><td><span>" +
                    armor.price+ " " + armor.priceDenomination.abbr+ "</span></td><td><span>" + armor.itemWeight+ "</span></td></tr>";
                this.ui.storeArmorTable.append(append);
            },

            onStoreSubmitClick: function(){
                var items = [];
                $(this.model.get('inventory')).each(function(key, value){
                    items.push(value.id + '');
                });
                $('.store-item').each(_.bind(function(key, value){
                    if($(value).prop('checked') === true) {
                        items.push($(value).val());
                    }
                }, this));
                var data = {equipmentIds: items};
                var url = '/CharacterSheet/equipment/'+ this.model.get('id') +'.json';
                $.getJSON(url, "ids=" + JSON.stringify(data), _.bind(function(data){
                    if(data.code === 1) {
                        this.fetchModel(_.bind(this.setInventory, this));
                        this.coinPurseView.fetchModel();
                        alert(data.message);
                        this.modalClose('store-modal');
                    }else if(data.code === 0){
                        alert(data.errorMessage);
                    }
                }, this));
            },

            setInventory: function(){
                $('tr.inventory-item').remove();
                $(this.model.get('inventory')).each(_.bind(function(key, value){
                    var item = this.findItemInInventory(value.id);
                    var $element;
                    if(item.maxWeaponRange !== undefined) {
                        $element = this.ui.storeWeaponTable;
                    }else if(item.armorClass !== undefined){
                        $element = this.ui.storeArmorTable;
                    }
                    $element.append('<tr class="inventory-item" ><td><span name="inventory>" value="' + item.id + '">' + item.name + '</span></td></tr>')
                }, this));
                if(this.model.get('encumbered')){
                    this.ui.encumberedLabel.show();
                }else{
                    this.ui.encumberedLabel.hide();
                }
            },

            findItemInInventory: function(id){
                for(var i=0; i < this.model.get('inventory').length; i++){
                    if(this.model.get('inventory')[i].id === id){
                        return this.model.get('inventory')[i];
                    }
                }
            },

            setMainHandOptions: function(){
                $('.main-hand-option').remove();
                $.getJSON('/CharacterSheet/main-hand/'+ this.model.get('id') +'.json', _.bind(function(data){
                    $(data).each(_.bind(function(key, value){
                        this.ui.equipMain.append('<option class="main-hand-option" value="' + value.id + '">' + value.name + '</option>')
                    }, this));
                }, this));
            },

            setOffHandOptions: function(){
                $('.off-hand-option').remove();
                $.getJSON('/CharacterSheet/off-hand/'+ this.model.get('id') +'.json', "characterId=" + this.model.get('id'), _.bind(function(data){
                    $(data).each(_.bind(function(key, value){
                        this.ui.equipOff.append('<option class="off-hand-option" value="' + value.id + '">' + value.name + '</option>')
                    }, this));
                }, this));
            },

            setArmorOptions: function(){
                $('.armor-option').remove();
                $.getJSON('/CharacterSheet/armor/'+ this.model.get('id') +'.json', _.bind(function(data){
                    $(data).each(_.bind(function(key, value){
                        this.ui.equipArmor.append('<option class="armor-option" value="' + value.id + '">' + value.name + '</option>')
                    }, this));
                }, this));
            },

            onClearLinkClick: function(){
                var data = {charId: this.model.get('id'),
                    equipmentIds: []};

                $.getJSON('equipment.json', "ids=" + JSON.stringify(data), _.bind(function(data){
                    this.fetchModel();
                }, this));
            },

            onEquipMainChange: function(){
                $.getJSON('/CharacterSheet/equip-main-hand/'+ this.model.get('id') +'/'+ this.ui.equipMain.val() +'.json', _.bind(function(data){
                    this.fetchModel();
                }, this));
            },

            onEquipOffChange: function(){
                $.getJSON('/CharacterSheet/equip-off-hand/'+ this.model.get('id') +'/'+ this.ui.equipOff.val() +'.json', _.bind(function(data){
                    this.fetchModel();
                }, this));
            },

            onEquipArmorChange: function(){
                $.getJSON('/CharacterSheet/equip-armor/'+ this.model.get('id') +'/'+ this.ui.equipArmor.val() +'.json', _.bind(function(){
                    this.fetchModel();
                }, this));
            },

            onSpellClick: function(event){
                $.getJSON('spell/' + $(event.currentTarget).data('spellid') + '.json', _.bind(function(data) {
                    $('#spell-text-div').remove();
                    $('#spell-text').append(data.spellModel.displayText);
                    this.modalOpen('spell-modal', 'spell-modal');
                    $('#spell-id').val($(event.currentTarget).data('spellid'));
                    $('#prepare-spell-btn').off();
                    var isPrepared = false;
                    $('.prepared-spell').each(function (key, value) {
                        if (($(value).data('spellid') === data.spellModel.id)) {
                            isPrepared = true;
                            return;
                        }
                    });
                    if (data.spellModel.level === 0) {
                        $('#prepare-spell-btn').hide();
                    } else {
                        $('#prepare-spell-btn').show();
                        if (isPrepared) {
                            $('#prepare-spell-btn').on('click', _.bind(this.onUnPrepareSpellClick, this));
                            $('#prepare-spell-btn').val('Un-Prepare');
                        } else {
                            $('#prepare-spell-btn').on('click', _.bind(this.onPrepareSpellClick, this));
                            $('#prepare-spell-btn').val('Prepare');
                        }
                    }
                }, this));
            },

            onUnPrepareSpellClick: function(){
                var spellId = parseInt($('#spell-id').val());
                var charId = this.model.get('id') + "";
                var url = "unprepare-spell/" + charId + "/" + spellId + ".json";
                $.ajax({type:"POST", url: url, success: _.bind(function(spell){
                    this.fetchModel(_.bind(this.displaySpellsKnown, this));
                    this.modalClose('spell-modal','spell-modal');
                }, this)});
            },

            onPrepareSpellClick: function(){
                console.log($('.prepared-spell').length )
                console.log(this.model.get('numberSpellsPreparedAllowed'))
                if($('.prepared-spell').length === this.model.get('numberSpellsPreparedAllowed')){
                    alert('You cannot prepare any more spells')
                    return;
                }
                var spellId = parseInt($('#spell-id').val());
                var charId = this.model.get('id') + "";
                var url = "prepare-spell/" + charId + "/" + spellId + ".json";
                $.ajax({type:"POST", url: url, success: _.bind(function(spell){
                    this.fetchModel(_.bind(this.displaySpellsKnown, this));
                    this.modalClose('spell-modal','spell-modal');
                }, this)});
            },

            onLearnSpellsLinkClick:function(){
                $('.spell-table').remove();
                $('#selected-spells-table tr').remove();
                this.addSpellsToModal("availableSpells/"+this.model.get('id')+"/" + $('#sort-by').val() + ".json", _.bind(function(){
                    $('.spell-line').on('dblclick', _.bind(this.onSpellLineDblClick, this));
                }, this));
                $('#spell-level-tabs').css('width', '40.5%');
                $('.selected-spells-container').show();
                $('#learn-spells').on('click', _.bind(this.onLearnSpellLinkClick,this));
            },

            onAllSpellsLinkClick: function(){
                $('.spell-table').remove();
                this.addSpellsToModal("allSpells/"+ $('#sort-by').val() + ".json", _.bind(function(){
                    $('#sort-by').on('change', _.bind(this.onSelectSortMethodChange, this));
                    $('#spell-class-select').on('change', _.bind(this.onSelectSpellClassChange, this));
                    $('.spell-line').off('dblclick', _.bind(this.onSpellLineDblClick, this));
                }, this));
                $('#spell-level-tabs').css('width', '60%');
                $('.selected-spells-container').hide();
            },

            addSpellsToModal: function(url, callback){
                $('.spell-table').remove();
                $('#spell-search').off('keyup', _.bind(this.onSearchFieldChange, this));
                $('#spell-search').on('keyup', _.bind(this.onSearchFieldChange, this));
                $.getJSON(this.pathContext + "/" +url, null, _.bind(function(data){
                    if($('#sort-by').val() === "Level")this.sortByLevel(data.data);
                    if($('#sort-by').val() === "School")this.sortBySchool(data.data);
                    $('.spell-line').on('click', _.bind(this.onSpellLineClick, this));
                    if(callback)callback();
                    this.modalOpen('spell-book-modal', 'spell-book-modal');
                    this.hideTabsWithNoSpells();
                },this));
            },

            onSearchFieldChange: function(){
                var searchText = $('#spell-search').val().toLowerCase();
                $('.spell-line').each(function(key, value){
                    if($(value).data('name').indexOf(searchText) < 0){
                        $(value).hide();
                        $(value).removeClass("visible");
                    }else{
                        $(value).addClass("visible");
                        $(value).show();
                    }
                });

                this.hideTabsWithNoSpells();
            },

            hideTabsWithNoSpells:function(text){
                var index = null;
                var $tabs = $('#sort-by').val() === 'Level' ? $('#levels') : $('#schools');
                $tabs.tabs({'active': 5});
                $('.spell-tab').each(function(key, value){
                    var $tab = $('#' + $(value).data('tab'));
                    if($('#' + $(value).prop('id') + ' .spell-line.visible').size() === 0){
                        $tab.hide();
                    }else{
                        $tab.show();
                        if(index === null) {
                            index = $tab.parent().index();
                            $('#spell-level-tabs').tabs('option', 'select', 5);
                        }
                    }
                });
            },

            sortBySchool: function(data){
                $('#spell-school-tabs').show();
                $('#spell-level-tabs').hide();
                $('#spell-school-tabs').tabs();
                if(data.abjuration){
                    $('#abjuration').append(data.abjuration);
                    $('#tab-abjuration').show();
                }
                if(data.conjuration){
                    $('#conjuration').append(data.conjuration);
                    $('#tab-conjuration').show();
                }
                if(data.enchantment){
                    $('#enchantment').append(data.enchantment);
                    $('#tab-enchantment').show();
                }
                if(data.evocation){
                    $('#evocation').append(data.evocation);
                    $('#tab-evocation').show();
                }
                if(data.divination){
                    $('#divination').append(data.divination);
                    $('#tab-divination').show();
                }
                if(data.illusion){
                    $('#illusion').append(data.illusion);
                    $('#tab-illusion').show();
                }
                if(data.necromancy){
                    $('#necromancy').append(data.necromancy);
                    $('#tab-necromancy').show();
                }
                if(data.transmutation){
                    $('#transmutation').append(data.transmutation);
                    $('#tab-transmutation').show();
                }
            },
            sortByLevel: function(data){
                $('#spell-school-tabs').hide();
                $('#spell-level-tabs').show();
                $('#spell-level-tabs').tabs();
                if(data.cantrip)$('#level-cantrip').append(data.cantrip);
                $('#level-one').append(data.one);
                $('#level-two').append(data.two);
                $('#level-three').append(data.three);
                $('#level-four').append(data.four);
                $('#level-five').append(data.five);
                if(data.six)$('#level-six').append(data.six);
                if(data.seven)$('#level-seven').append(data.seven);
                if(data.eight)$('#level-eight').append(data.eight);
                if(data.nine)$('#level-nine').append(data.nine);
            },

            onSelectSortMethodChange:function(){
                this.addSpellsToModal("allSpells/" + $('#sort-by').val() +".json");
            },

            onSelectSpellClassChange: function(){
                if($('#spell-class-select').val() === '0'){
                    this.addSpellsToModal("allSpells/" + $('#sort-by').val() +".json")
                }else{
                    this.addSpellsToModal("classSpells/"+ $('#spell-class-select').val() + "/" + $('#sort-by').val() +".json");
                }
            },

            onSpellLineClick:function(event){
                $('.spell-line').removeClass('selected');
                $(event.currentTarget).addClass('selected');
                var id = $(event.currentTarget).children('.spell-select').attr('id');
                $.getJSON('spell/' + id + '.json', _.bind(function(data){
                    $('#spell-text-div').remove();
                    $('#spell-preview').append(data.spellModel.displayText);
                }, this));},

            onSpellLineDblClick: function(event){
                var id = $(event.currentTarget).children('.spell-select').attr('id');

                var spellClass = "selected-";
                if($('#spell-level-tabs').tabs("option", "active") === 0){
                    if(this.model.get('numCantripsAllowed') - $('.selected-cantrip').size() <= 0){
                        alert("You cannot learn any more cantrips");
                        return;
                    }
                    spellClass += "cantrip"
                }else{
                    if(this.model.get('numSpellsAllowed') - $('.selected-spell').size() <= 0){
                        alert("You cannot learn any more spells.");
                        return;
                    }
                    spellClass += "spell";
                }
                if($('#spell-delete-'+id).prop('id') !== undefined){
                    return;
                }
                if($('#known-spell-'+id).prop('id') !== undefined){
                    alert('You already know this spell');
                    return;
                }
                $(event.currentTarget).addClass('selected');

                var text = $(event.currentTarget).children('.spell-select').text();
                var linkId = "spell-delete-" + id;
                if($(".selected-spell-line#"+id) !== undefined) {
                    $('#selected-spells-table').append("<tr id='selected-" + id + "'><td><span class='" + spellClass + "' data-spellid='"
                        + id + "'>" + text + "</span></td>" + "<td><a href='javascript:void(0);' id= '"+ linkId +
                        "' class='link-small' data-spellid='" + id + "'>Delete</a></td></tr>");
                }
                $("#"+linkId).on('click', _.bind(this.onSpellDeleteLinkClick, this));
            },

            onSpellDeleteLinkClick: function(event){
                var id = $(event.currentTarget).data('spellid');
                $("#selected-" + id).remove();
            },

            onLearnSpellLinkClick: function(event){
                var spells = [];
                $('.selected-spell, .selected-cantrip').each(_.bind(function(key, value){
                    spells.push($(value).data('spellid'));
                },this));

                var data = {"spellIds": spells};
                var success = function(data){
                    this.fetchModel(_.bind(this.displaySpellsKnown,this));
                    this.modalClose('spell-book-modal', 'spell-book-modal');
                };

                $.ajax({
                    type: "POST",
                    url: "/CharacterSheet/learn-spells/"+ this.model.get('id') +".json",
                    data: "spellIds=" + spells,
                    success: _.bind(success,this)
                })
            },

            onAbilityConfirmClick: function(){
                this.abilitiesConfirmed = true;
                this.abilitiesView.confirmed = true;
                this.abilitiesView.showHideAbilityChangeButtons();
                this.ui.abilityConfirm.hide();
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
                        modal_width = '800';
                        modal_height = '600';
                        break;
                    case 'spell-modal':
                        modal_width = '450';
                        modal_height = 'auto';
                        break;
                    case 'spell-book-modal':
                        modal_width = 1200;
                        modal_height = 600;
                        break;
                    default:
                        modal_width = '1050';
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
                    height: modal_height,
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
                poundKey.dialog('open');
                $('#body').css("overflow", "hidden");
            },

            modalClose: function(key) {
                // close modal dialog window
                $('#' + key).dialog("close");
                $('#body').css("overflow","scroll");

                return false;
            }


        });
        epoxy.View.mixin(view.prototype);
        return view;
    })
;

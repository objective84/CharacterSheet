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
                languageSubmit: '#language-submit'
            },

            bindings:{

            },

            events:{
                'change .ability' : 'onAbilityUpdate',
                'change @ui.clazz': 'onClassChange',
                'change @ui.race' : 'onRaceChange',
                'click @ui.languageSubmit' : 'onLanguageSubmitClick'
            },

            onRender: function(){
                var id;
                $('.ability').each(_.bind(function(key, value){
                    this.setAbilityMod($(value).attr('id'), $(value).val());
                },this));
                this.ui.languageSubmit.on('click', _.bind(this.onLanguageSubmitClick, this));
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
                            '<a class="minus-sign remove-link" id="' + language + '" href="#">Remove</a></td></tr>');
                this.setLanguageSelect();
                $('#' + language).on('click', _.bind(this.removeLanguage, this));
            },

            removeLanguage: function(event){
                $('#language-row-' + $(event.target).prop('id')).remove();
                this.setLanguagesAllowed();
                this.setLanguageSelect();
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

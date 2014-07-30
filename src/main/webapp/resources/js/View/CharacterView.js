define("CharacterView",
    ["jquery", "underscore", "marionette", "CharacterModel"],
    function($, _, marionette, CharacterModel){
        return marionette.ItemView.extend({
            el: '#characterForm',
            model: null,

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
                int: '#Int',
                wis: '#Wis',
                cha: '#Cha',
                skillProficiencies: '#skillProfs',
                toolProficiencies: '#toolProfs',
                weaponProficiencies: '#weaponProfs',
                armorProficiencies: '#armorProfs',
                saveProficiencies: '#saveProfs',
                languages: '#languages'
            },

            bindings:{
            },

            events:{
                'change .ability' : 'onAbilityUpdate',
                'change @ui.clazz': 'onClassChange',
                'change @ui.race' : 'onRaceChange'
            },

            onRender: function(){
                var id;
                $('.ability').each(_.bind(function(key, value){
                    this.setAbilityMod($(value).attr('id'), $(value).val());
                },this));
            },

            onAbilityUpdate: function(event){
                var id = $(event.target).attr('id');
                this.setAbilityMod(id, $(event.target).val());
                if($(event.target).prop('id') == this.ui.con.prop('id')){
                    this.setMaxHealth();
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

            onClassChange: function(){
                $.getJSON("class.json", 'classId='+this.ui.clazz.val(), _.bind(function(data){
                    this.setProficiencies(data.proficiencies);
                    this.setMaxHealth(data.hitDie);
                }, this));
            },

            onRaceChange: function(){
                $.getJSON("race.json", 'raceId='+this.ui.race.val(), _.bind(function(data){
                    this.setLanguages(data.languages);
                }, this));
            },

            setProficiencies: function(proficiencies){
                console.log(proficiencies)
                $(proficiencies).each(_.bind(function(key, value){
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
                        $element.append('<tr><td><input name="proficiencies" type="radio" value="' + value.id + '">' + value.name + '</input></td>')
                    }else {
                        $element.append('<tr><td><input name="proficiencies" type="hidden" value="' + value.id + '">' + value.name + '</input></td>')
                    }
                },this))
            },

            setLanguages: function(languages){
                $(languages).each(_.bind(function(key, value){
                    this.ui.languages.append('<tr><td><input name="languages" type="hidden" value="' + value.id + '">' + value.name + '</input></td>')
                }, this));
            },

            setMaxHealth: function(hitDie){
                $.getJSON("dice.json", 'dieType='+hitDie, _.bind(function(data){
                    console.log(data)
                    this.ui.maxHealth.val(data.maxValue + this.getAbilityMod(this.ui.con.val()));
                    this.ui.currentHealth.val(this.ui.maxHealth.val());
                }, this));
            }


        });
    })
;

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
                cha: '#Cha'
            },

            bindings:{
            },

            events:{
                'change .ability' : 'onAbilityUpdate',
                'change @ui.clazz': 'onClassChange'
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
                this.setMaxHealth();
            },

            setMaxHealth: function(){
                $.getJSON("hitDice.json", 'classId='+this.ui.clazz.val(), _.bind(function(data){
                        this.ui.maxHealth.val((data['dice'].maxValue) + this.getAbilityMod(this.ui.con.val()));
                        this.ui.currentHealth.val(this.ui.maxHealth.val());
                    }, this)
                );
            }
        });
    })
;

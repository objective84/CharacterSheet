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
                    console.log($(value).attr('id') + ", " + $(value).val());
                    this.setAbilityMod($(value).attr('id'), $(value).val());
                },this));
            },

            onAbilityUpdate: function(event){
                var id = $(event.target).attr('id');
                this.setAbilityMod(id, $(event.target).val());
            },

            setAbilityMod: function(id, val){
                var mod = (parseInt(val) === 0) ? 0: parseInt(Math.floor(( val - 10) / 2));
                mod = (mod >= 0) ? (' + ' + mod) : (' - ' + Math.abs(mod));
                $('#'+id + "Mod").prop('textContent', mod);
            },

            onClassChange: function(){
                console.log(this.ui.clazz.val())
                $.getJSON("hitDice.json", 'classId='+this.ui.clazz.val(), _.bind(function(data){
                        console.log(data['dice'].maxValue);
                        this.ui.maxHealth.prop('textContent', (data['dice'].maxValue));
                        this.ui.currentHealth.val(data['dice'].maxValue);
                    }, this)
                );
            }
        });
    })
;

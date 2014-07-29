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
                class: '#class',
                str: '#str',
                dex: '#dex',
                con: '#con',
                int: '#int',
                wis: '#wis',
                cha: '#cha'
            },

            bindings:{
//                '@this.ui.name': 'name',
//                '@this.ui.race': 'race',
//                '@this.ui.class': 'classType',
//                '@this.ui.str': 'str',
//                '@this.ui.dex': 'dex',
//                '@this.ui.con': 'con',
//                '@this.ui.int': 'intel',
//                '@this.ui.wis': 'wis',
//                '@this.ui.cha': 'cha'
            },

            events:{
                'change .ability' : 'onAbilityUpdate'
            },

            onRender: function(){
//                this.model = new CharacterModel({id: this.$('#characterId').val()});
//                this.autoFetch();
                var id;
                $('.ability').each(_.bind(function(key, value){
                    console.log($(value).attr('id') + ", " + $(value).val());
                    this.setAbilityMod($(value).attr('id'), $(value).val());
                },this));
            },

//            autoFetch: function(){
//                var data = 'character='+this.model.get('id');
//                setInterval(_.bind(function() {
//                    this.model.fetch({
//                        data: data,
//                        success: function(data){
//                        }
//                    });
//                },this), 10000);
//            },

            onAbilityUpdate: function(event){
                var id = $(event.target).attr('id');
                this.setAbilityMod(id, $(event.target).val());
            },

            setAbilityMod: function(id, val){
                var mod = (parseInt(val) === 0) ? 0: parseInt(Math.floor(( val - 10) / 2));
                mod = (mod >= 0) ? (' + ' + mod) : (' - ' + Math.abs(mod));
                $('#'+id + "Mod").prop('textContent', mod);
            }
        });
    })
;

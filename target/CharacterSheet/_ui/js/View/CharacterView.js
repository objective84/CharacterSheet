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
                '@this.ui.name': 'name',
                '@this.ui.race': 'race',
                '@this.ui.class': 'classType',
                '@this.ui.str': 'str',
                '@this.ui.dex': 'dex',
                '@this.ui.con': 'con',
                '@this.ui.int': 'intel',
                '@this.ui.wis': 'wis',
                '@this.ui.cha': 'cha'
            },

            onRender: function(){
                this.model = new CharacterModel({id: this.$('#characterId').val()});
                this.model.fetch({
                    success: function(data){
                        console.log(data);
                    }
                });
            }
        });
    })
;

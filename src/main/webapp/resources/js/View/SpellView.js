/**
 * Created by PVarnerHowland on 9/17/2014.
 */

define("SpellView",
    ["jquery", "underscore", "marionette", 'jqueryUi' ],
    function($, _, marionette, jqueryUi){
        return marionette.ItemView.extend({
            el: '#spell-book-modal',
            pathContext: $('#pathContext').val(),
            characterSheet: null,
            ui:{
                sortBy: '#sort-by',
                classes: '#spell-class-select',
                textSearch: '#spell-search',
                levelTabs: '#spell-level-tabs',
                schoolTabs: '#spell-school-tabs',
                addSpellsLink: "#add-spells",
                allSpells: "#all-spells",
                searchBtn: "#search-btn",
                advSearchLink: "#advanced-search-link",
                advSearchPanel: "#advanced-search",
                advSearchBtn: "#advanced-search-btn",
                name: '#search-by-name',
                description: '#search-by-description',
                levelMin: '#search-by-level-min',
                levelMax: '#search-by-level-max',
                school: '#search-by-school',
                class: '#search-by-class',
                savingThrow: '#search-by-save',
                componentsVerbal: '#search-by-component-verbal',
                componentsSomatic: '#search-by-component-somatic',
                componentsMaterial: '#search-by-component-material',
                attack: '#search-by-combat',
                ritual: '#search-by-ritual',
                concentration: '#search-by-concentration'
            },

            events:{
                "change @ui.sortBy": 'onSelectSortMethodChange',
                'change @ui.classes': 'onSelectSpellClassChange',
                'click .spell-line': 'onSpellLineClick',
                'click @ui.searchBtn': 'onSearchFieldChange',
                'click @ui.advSearchLink': 'onAdvancedSearchLinkClick',
                'click @ui.advSearchBtn': 'onAdvancedSearchBtnClick'
            },

            initialize: function(){
                this.characterSheet = $('#character-sheet')[0] !== undefined;
                $('#all-spells').on('click', _.bind(this.onAllSpellsLinkClick, this));
            },

            onRender: function(){
                if(!this.characterSheet){
                    $('#spell-book-modal').show();
                    this.addSpellsToModal("allSpells/"+ this.ui.sortBy.val() + ".json");
                }
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

            addSpellsToModal: function(url, callback, data, isModalOpen){
                $('.spell-table').remove();
//                $('#spell-search').off('keyup', _.bind(this.onSearchFieldChange, this));
//                $('#spell-search').on('keyup', _.bind(this.onSearchFieldChange, this));
                $.getJSON(this.pathContext + "/" +url, data, _.bind(function(data){
                    if($('#sort-by').val() === "Level")this.sortByLevel(data.data);
                    if($('#sort-by').val() === "School")this.sortBySchool(data.data);
                    $('.spell-line').on('click', _.bind(this.onSpellLineClick, this));
                    if(callback)callback();
                    if(this.characterSheet && !isModalOpen){
                        modalOpen('spell-book-modal', 'spell-book-modal');
                    }
                    this.hideTabsWithNoSpells();
                },this));
            },

            onSearchFieldChange: function(){
                var searchText = this.ui.textSearch.val().toLowerCase();
                var data = {"text": searchText};
                this.addSpellsToModal("spell/textSearch/" + $('#sort-by').val(), null, data, true);
            },

            addSpellsToChooseToModal: function(){
                $('.spell-table').remove();
//                $('#spell-search').off('keyup', _.bind(this.onSearchFieldChange, this));
//                $('#spell-search').on('keyup', _.bind(this.onSearchFieldChange, this));
                this.sortByLevel(this.model.get('spellsToChoose'));
                $('.spell-line').on('click', _.bind(this.onSpellLineClick, this));
                if(this.characterSheet){
                    modalOpen('spell-book-modal', 'spell-book-modal');
                }
                $('#choose-before-close').val("true");
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
                $.getJSON(this.pathContext + '/spell/' + id + '.json', _.bind(function(data){
                    $('#spell-text-div').remove();
                    $('#spell-preview').append(data.spellModel.displayText);
                }, this));},

            onSpellDeleteLinkClick: function(event){
                var id = $(event.currentTarget).data('spellid');
                $("#selected-" + id).remove();
            },

            onAdvancedSearchLinkClick: function(){
                this.ui.advSearchPanel.slideToggle();
            },

            onAdvancedSearchBtnClick: function(){
                var params = {};
                if(this.ui.name.val()){
                    params.name=this.ui.name.val();
                }
                if(this.ui.description.val()){
                    params.description = this.ui.description.val();
                }
                if(this.ui.levelMin.val() || this.ui.levelMax.val()){
                    params.level = (this.ui.levelMin.val() ? this.ui.levelMin.val() : 0)  + "," + (this.ui.levelMax.val() ? this.ui.levelMax.val() : 9);
                }
                if(this.ui.school.val() !== "-1"){
                    params.school = this.ui.school.val();
                }
                if(this.ui.class.val() !== "-1"){
                    params.class = this.ui.class.val();
                }
                if(this.ui.savingThrow.val() !== "-1"){
                    params.save = this.ui.savingThrow.val();
                }
                if(this.ui.componentsVerbal.prop('checked') == true){
                    params.verbal = "true";
                }
                if(this.ui.componentsSomatic.prop('checked') == true){
                    params.somatic += "true";
                }
                if(this.ui.componentsMaterial.prop('checked') == true){
                    params.material += "true";
                }
                if(this.ui.attack.prop('checked') == true){
                    params.attack = "true";
                }
                if(this.ui.ritual.prop('checked') == true){
                    params.ritual = "true";
                }
                if(this.ui.concentration.prop('checked') == true){
                    params.concentration = "true";
                }

                this.addSpellsToModal("spell/advSearch/" + $('#sort-by').val(), null, params, true);
                this.ui.advSearchPanel.slideToggle();
            }

        });
    });


/**
 * Created by PVarnerHowland on 9/17/2014.
 */

define("SpellView",
    ["jquery", "underscore", "marionette", 'jqueryUi' ],
    function($, _, marionette, jqueryUi){
       return marionette.ItemView.extend({
            el: '#spell-book-modal',
            ui:{
                sortBy: '#sort-by',
                classes: '#spell-class-select',
                textSearch: '#spell-search',
                levelTabs: '#spell-level-tabs',
                schoolTabs: '#spell-school-tabs'
            },

            events:{
                "change @ui.sortBy": 'onSelectSortMethodChange',
                'change @ui.classes': 'onSelectSpellClassChange',
                'click .spell-line': 'onSpellLineClick'
            },

            onRender: function(){
                this.addSpellsToModal("allSpells/"+ this.ui.sortBy.val() + ".json");
            },

//            onAddSpellLinkClick:function(){
//                $('.spell-table').remove();
//                this.addSpellsToModal("availableSpells/"+this.model.get('id')+".json", _.bind(function(){
//                    $('.spell-line').on('dblclick', _.bind(this.onSpellLineDblClick, this));
//                }, this));
//            },
//
//            onAllSpellsLinkClick: function(){
//                $('.spell-table').remove();
//                this.addSpellsToModal("allSpells/"+ this.ui.sortBy.val() + ".json", _.bind(function(){
//                    this.ui.sortBy.on('change', _.bind(this.onSelectSortMethodChange, this));
//                    this.ui.classes.on('change', _.bind(this.onSelectSpellClassChange, this));
//                    $('.spell-line').off('dblclick', _.bind(this.onSpellLineDblClick, this));
//                }, this));
//            },

            addSpellsToModal: function(url){
                $('.spell-table').remove();
                $.getJSON(url, null, _.bind(function(data){
                    if(this.ui.sortBy.val() === "Level")this.sortByLevel(data.data);
                    if(this.ui.sortBy.val() === "School")this.sortBySchool(data.data);
                },this));
            },

            onSearchFieldChange: function(){
                var searchText = this.ui.textSearch.val().toLowerCase();
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
                var $tabs = this.ui.sortBy.val() === 'Level' ? $('#levels') : $('#schools');
                $tabs.tabs({'active': 5});
                $('.spell-tab').each(function(key, value){
                    var $tab = $('#' + $(value).data('tab'));
                    if($('#' + $(value).prop('id') + ' .spell-line.visible').size() === 0){
                        $tab.hide();
                    }else{
                        $tab.show();
                        if(index === null) {
                            index = $tab.parent().index();
                            this.ui.levelTabs.tabs('option', 'select', 5);
                        }
                    }
                });
            },

            sortBySchool: function(data){
                this.ui.schoolTabs.show();
                this.ui.levelTabs.hide();
                this.ui.schoolTabs.tabs();
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
                this.ui.schoolTabs.hide();
                this.ui.levelTabs.show();
                this.ui.levelTabs.tabs();
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
                this.addSpellsToModal("allSpells/" + this.ui.sortBy.val() +".json");
            },

            onSelectSpellClassChange: function(){
                if(this.ui.classes.val() === '0'){
                    this.addSpellsToModal("allSpells/" + this.ui.sortBy.val() +".json")
                }else{
                    this.addSpellsToModal("classSpells/"+ this.ui.classes.val() + "/" + this.ui.sortBy.val() +".json");
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

            onSpellLineDblClick: function(){
                $(event.currentTarget).addClass('selected');
                var id = $(event.currentTarget).children('.spell-select').attr('id');
                var text = $(event.currentTarget).children('.spell-select').text();
                if($(".selected-spell-line#"+id) !== undefined) {
                    $('#selected-spells').append("<tr><td><span class='selected-spell-line' id='" + id + "'></span>" + text + "</td>" +
                        "<td><a href='#' class='link-small' data-spellid='" + id + "'>Delete</a></td></tr>");
                }
            }
        });
    });


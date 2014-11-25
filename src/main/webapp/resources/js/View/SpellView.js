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
                allSpells: "#all-spells"
            },

            events:{
                "change @ui.sortBy": 'onSelectSortMethodChange',
                'change @ui.classes': 'onSelectSpellClassChange',
                'click .spell-line': 'onSpellLineClick',
                'keyup @ui.textSearch': 'onSearchFieldChange'
            },

            initialize: function(){
                this.characterSheet = $('#character-shet')[0] !== undefined;
                $('#add-spells').on('click', _.bind(this.onLearnSpellsLinkClick, this));
                $('#all-spells').on('click', _.bind(this.onAllSpellsLinkClick, this));
            },

            onRender: function(){
                if(!this.characterSheet){
                    $('#spell-book-modal').show();
                    this.addSpellsToModal("allSpells/"+ this.ui.sortBy.val() + ".json");
                }
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
                    if(this.characterSheet){
                        modalOpen('spell-book-modal', 'spell-book-modal');
                    }
                    this.hideTabsWithNoSpells();
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

            addSpellsToChooseToModal: function(){
                $('.spell-table').remove();
                $('#spell-search').off('keyup', _.bind(this.onSearchFieldChange, this));
                $('#spell-search').on('keyup', _.bind(this.onSearchFieldChange, this));
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

                var success = function(data){
                    this.fetchModel(_.bind(this.displaySpellsKnown,this));
                    modalClose('spell-book-modal', 'spell-book-modal');
                };

                $.ajax({
                    type: "POST",
                    url: "/CharacterSheet/learn-spells/"+ this.model.get('id') + ".json",
                    data: "spellIds=" + spells,
                    success: _.bind(success, this)
                })
            }
        });
    });


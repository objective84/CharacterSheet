/**
 * Created by PVarnerHowland on 7/25/2014.
 */
define("WeaponEntryView",
    ["jquery", "underscore", "marionette"],
    function($, _, marionette){
        return marionette.ItemView.extend({
            el: "#entry",

            ui:{
                submitBtn: '#formSubmit',
                weaponGroupSelect: '#weaponGroup',
                weaponRange: '#weaponRange',
                maxWeaponRange: '#maxWeaponRange'
            },

            events:{
                'click .entry-link': 'onEntryClick',
                'change @ui.weaponGroupSelect': 'onWeaponGroupSelectChange'
            },

            onRender: function(){
                this.showHideRangeOptions();
            },

            onEntryClick: function(event){
                $('#id').val($(event.target).attr('id'));
                $('#form').submit();
            },

            onWeaponGroupSelectChange: function(){
                this.showHideRangeOptions();
            },

            showHideRangeOptions: function(){
                if($('#weaponGroup option:selected').text() === "Range") {
                    $('.weapon-range').slideDown('slow');
                }else if($('#weaponGroup option:selected').text() === "Melee") {
                    this.ui.weaponRange.val('');
                    this.ui.maxWeaponRange.val('');
                    $('.weapon-range').slideUp('slow');
                }
            }
        });
    }
);

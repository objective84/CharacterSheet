/**
 * Created by PVarnerHowland on 4/1/2015.
 */
define("InitiativeView",
    ["jquery", "underscore", "marionette"],
    function($, _, marionette){
        return marionette.ItemView.extend({
            el: "#initiative",
            password: 'pw',
            reroll: "",

            ui:{
                dmViewToggle: '#dm-view-toggle',
                calculate: '#calculate',
                dmpw: '#dm-pw',
                dmView: '#dm-view',
                clearBtn: '#clear-order'
            },

            events:{
                'click @ui.calculate' : "onCalculateClick",
                'click @ui.dmViewToggle' : "onDmViewClick",
                'keyup @ui.dmpw': 'onDMPWChange',
                'click @ui.clearBtn': 'onClearClick'
            },

            onCalculateClick: function(){
                if(!this.validate())return;
                var size = parseInt($('input[name=size]:checked' ).val());
                var sizeText = $('input[name=size]:checked').data('text');
                var action;
                var actionText;
                if($('input[name=action]:checked').prop('id') === "spellcasting"){
                    action = parseInt($('#spell-level').val());
                    actionText = "Level " + action + " spell";
                    action = 0-action;
                }else {
                    action = parseInt($('input[name=action]:checked').val());
                    var actionText = $('input[name=action]:checked').data('text');
                }
                var dex = parseInt($('#character-dex').val());
                var mod = size + action + dex;
                var roll = Math.floor(Math.random() * (20 - 1) + 1);

                var url = 'submit-initiative/'+$('#character-name').val() + '/' + (roll+mod) + '/' + $('#character-dex').val() + '/' + sizeText + '/' + actionText;

                $.ajax({
                    type: "post",
                    url: url,
                    success: _.bind(function(data){
                        if("" === data){
                            $('#no-reroll').removeClass('hide');
                        }else{
                            $('#initiative-roll').text(roll);
                            $('#initiative-modifier').text((mod<0 ? "":"+") + mod);
                            $('#initiative-total').text(roll + mod);
                        }
                    }, this)
                })
            },

            printInitiatives: function(initiatives){
                $('#results tbody tr').remove();
                $.each(initiatives, function(key, value){
                    var reroll = (value.reroll === "yes" ?
                        "<td class='initiative-reroll'><div class='reroll-placeholder'></div></td>" :
                        "<td class='initiative-reroll'><input type='button' value='Re-Roll' class='release-for-reroll' id='release-"+key +"' data-name='" + key + "'></td></tr>");
                    $('#results').append("<tr><td>"+ key +"</td><td>" + value.initiative + "</td><td>"+value.size+"</td><td>"+value.action+"</td><td>"+value.dex+"</td>" + reroll);
                })
                $('.release-for-reroll').on('click', _.bind(this.releaseForReRoll, this));
            },

            onDmViewClick: function(){
                if(this.ui.dmpw.hasClass('hide')) {
                    this.ui.dmpw.removeClass('hide');
                }else{
                    this.ui.dmpw.addClass('hide');
                }
            },

            onDMPWChange: function(){
                if(this.ui.dmpw.val() !== this.password) return;
                $('#dm-view').removeClass('hide');
                if($($('dm-view-toggle').is(":checked"))){
                    this.startInitiativeFetch();
                }else{
                    $('#results tr').remove();
                }
            },

            startInitiativeFetch: function(){
                this.getInitiativeOrder();
                setInterval(_.bind(this.getInitiativeOrder, this), 1000);
            },

            getInitiativeOrder: function(){
                if($(this.ui.dmViewToggle.is(":checked"))){
                    $.ajax({
                        type: "post",
                        url: 'get-initiative',
                        success: _.bind(function (data) {
                            this.printInitiatives(data);
                        }, this)
                    });
                }
            },

            validate: function(){
                this.clearValidation();
                if($('#character-name').val().length === 0){
                    $('#character-name').addClass('error');
                    $('#name-error').removeClass('hide');
                    return false;
                }
                return true;
            },

            clearValidation: function(){
                $('#character-name').removeClass('error');
                $('#name-error').addClass('hide');
                $('#no-reroll').addClass('hide');
                $('#no-reroll').addClass('hide');
            },

            onClearClick: function(){
                $.getJSON('clear-initiative');
            },

            releaseForReRoll: function(e){
                $.getJSON('reroll/'+ $(e.currentTarget).data('name'));
            }
        });
    }
);

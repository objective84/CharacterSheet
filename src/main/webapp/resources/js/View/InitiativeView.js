/**
 * Created by PVarnerHowland on 4/1/2015.
 */
define("InitiativeView",
    ["jquery", "underscore", "marionette"],
    function($, _, marionette){
        return marionette.ItemView.extend({
            el: "#initiative",


            ui:{
                dmView: '#dm-view',
                calculate: '#calculate'
            },

            events:{
                'click @ui.calculate' : "onCalculateClick",
                'click @ui.dmView' : "onDmViewClick"
            },

            onCalculateClick: function(){
                var size = parseInt($('input[name=size]:checked' ).val());
                var action;
                if($('input[name=action]:checked').prop('id') === "spellcasting"){
                    action = 0 - parseInt($('#spell-level').val());
                }else {
                    action = parseInt($('input[name=action]:checked').val());
                }
                var dex = parseInt($('#character-dex').val());
                var mod = size + action + dex;
                var roll = Math.floor(Math.random() * (20 - 1) + 1);

                $('#initiative-roll').text(roll);
                $('#initiative-modifier').text((mod<0 ? "":"+") + mod);
                $('#initiative-total').text(roll + mod);

                $.ajax({
                    type: "post",
                    url: 'submit-initiative/'+$('#character-name').val() + '/' + (roll+mod),
                    success: _.bind(function(data){
                        //this.printInitiatives(data);
                    }, this)
                })
            },

            printInitiatives: function(initiatives){
                $('#results tbody tr').remove();
                $.each(initiatives, function(key, value){
                    $('#results').append("<tr><td>"+ key +"</td><td>" + value + "</td></tr>")
                })
            },

            onDmViewClick: function(){
                $('.initiative-order').toggle();
                if($(this.ui.dmView.is(":checked"))){
                    this.startInitiativeFetch();
                }else{
                    $('#initiative-order tr').remove();
                }
            },

            startInitiativeFetch: function(){
                this.getInitiativeOrder();
                setInterval(_.bind(this.getInitiativeOrder, this), 1000);
            },

            getInitiativeOrder: function(){
                if($(this.ui.dmView.is(":checked"))){
                    $.ajax({
                        type: "post",
                        url: 'get-initiative',
                        success: _.bind(function (data) {
                            this.printInitiatives(data);
                        }, this)
                    });
                }
            }
        });
    }
);

/**
 * Created by PVarnerHowland on 8/21/2014.
 */

define("CoinPurseModel",
    ["jquery", "underscore", "backbone", "epoxy"],
    function($, _, backbone, epoxy){
        var model = backbone.Model.extend({
                defaults:{
                    cp: '0',
                    sp: '0',
                    ep: '0',
                    gp: '0',
                    pp: '0'
                },

                setCoinPurse: function(coinPurse){
                    this.set('cp', coinPurse.cp);
                    this.set('sp', coinPurse.sp);
                    this.set('ep', coinPurse.ep);
                    this.set('gp', coinPurse.gp);
                    this.set('pp', coinPurse.pp);
                }
            });
        epoxy.Model.mixin(model.prototype);
        return model;
    }
);

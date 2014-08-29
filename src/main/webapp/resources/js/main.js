/**
 * Created by Peter's Desktop on 7/22/2014.
 */

require(['jquery', 'underscore', 'marionette', 'Router'], function ($, _, marionette, Router) {
    marionette.ItemView.prototype.render = function () {
        this._ensureViewIsIntact();

        this.triggerMethod('before:render', this);

        var data = this.serializeData();
        data = this.mixinTemplateHelpers(data);

        var template = this.getTemplate();
        if (template != null) {
            var html = Marionette.Renderer.render(template, data);
            this.attachElContent(html);
        }
        this.bindUIElements();

        this.triggerMethod('render', this);

        return this;
    };
    new Router();
});

function setLanguagesAllowed(model){
    var languagesAllowed = getAbilityMod($('#Int').val()) - $('.language-row').length;
    if(model.get('race')){
        languagesAllowed = languagesAllowed + model.get('race').languages.length;
    }
}

function getAbilityMod(score){
    return (parseInt(score) === 0) ? 0: parseInt(Math.floor(( score - 10) / 2));
}


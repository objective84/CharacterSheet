/**
 * Created by Peter's Desktop on 7/22/2014.
 */
require.config({
    waitSeconds: 200,
    paths: {
        // Page Controllers
        Router: 'Router',
        CharacterView: 'View/CharacterView',
        DefaultDBEntryView: 'View/DefaultDBEntryView',
        LanguageView: 'View/LanguageView',
        CharacterListView: 'View/CharacterListView',
        // Behaviors

        // Other
        main: 'main',
        //Views

        //Models
        CharacterModel: 'Model/CharacterModel',
        //Libs
        jquery: 'lib/jquery-1.8.3',
        underscore: 'lib/underscore',
        backbone: 'lib/backbone',
        marionette: 'lib/marionette'
    },

    getContextPath: function() {
        return "<%=request.getContextPath()%>";
    }
});

/**
 * Created by Peter's Desktop on 7/22/2014.
 */
require.config({
    baseUrl: '/_ui/js/',
    waitSeconds: 200,
    deps:['main'],
    paths: {
        // Page Controllers
        Router: 'Router',
        CharacterView: 'View/CharacterView',
        RaceView: 'View/RaceView',
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
    }
});

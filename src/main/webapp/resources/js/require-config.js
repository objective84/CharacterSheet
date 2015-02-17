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
        WeaponEntryView: 'View/WeaponEntryView',
        AbilitiesView: 'View/AbilitiesView',
        CoinPurseView: 'View/CoinPurseView',
        RaceView: 'View/RaceView',
        SubraceView: 'View/SubraceView',
        ClassView: 'View/ClassView',
        SpellView: 'View/SpellView',
        CharacterDescriptionView: 'View/CharacterDescriptionView',
        LightPuzzleView: 'View/LightPuzzleView',
        // Behaviors
        // Other
        main: 'main',
        //Views

        //Models
        CharacterModel: 'Model/CharacterModel',
        AbilitiesModel: 'Model/AbilitiesModel',
        CoinPurseModel: 'Model/CoinPurseModel',
        RaceModel: 'Model/RaceModel',
        ClassModel: 'Model/ClassModel',
        SubraceModel: 'Model/SubraceModel',
        CharacterDescriptionModel: 'Model/CharacterDescriptionModel',
        //Libs
        jquery: 'lib/jquery',
        jqueryUi: 'lib/jquery-ui',
        underscore: 'lib/underscore',
        backbone: 'lib/backbone',
        marionette: 'lib/marionette',
        epoxy: 'lib/epoxy'
    }
});

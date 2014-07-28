/**
 * Created by Peter's Desktop on 7/22/2014.
 */
define('Router',
    [
        'jquery',
        'marionette',
        'PageControllerMap',
        'CharacterView',
        'RaceView',
        'LanguageView',
        'CharacterListView'
    ],
    function ($, marionette, PageControllerMap, CharacterView, RaceView, LanguageView, CharacterListView) {
        return marionette.Controller.extend({
                mappedPageControllers: [
                    PageControllerMap.createMappedPageController('character-sheet', CharacterView),
                    PageControllerMap.createMappedPageController('races|subraces', RaceView),
                    PageControllerMap.createMappedPageController('languages', LanguageView)
                ],

                initialize: function () {
                    this.createMappedController();
                },

                createMappedController: function () {
                    var PageControllerClass = this.getMappedPageControllerClass();
                    if (PageControllerClass) {
                        //TODO: '$(document).ready' should be removed when JS is moved to bottom of BODY tag.
                        $(document).ready(function () {
                            var pageController = new PageControllerClass();
                            if (pageController instanceof marionette.ItemView) {
                                pageController.render();
                            }
                            else {
                                //TODO: This should be removed when all JS PageControllers have been migrated to Marionette objects.
                                pageController.init();
                            }
                        });
                    }
                },

                getMappedPageControllerClass: function () {
                    var pathName = document.location.pathname;
                    for (var i = 0; i < this.mappedPageControllers.length; i++) {
                        var mappedPageController = this.mappedPageControllers[i];
                        if (mappedPageController.getRegExp().test(pathName))
                            return mappedPageController.getPageControllerClass();
                    }
                    return undefined;
                }
            }
        );
    }
);

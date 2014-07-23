/**
 * Created by Peter's Desktop on 7/22/2014.
 */
define('Router',
    [
        'jquery',
        'marionette',
        'PageControllerMap',
        'CharacterView'
    ],
    function ($, marionette, PageControllerMap, CharacterView) {
        return marionette.Controller.extend({
                mappedPageControllers: [
                    PageControllerMap.createMappedPageController('character-sheet', CharacterView)
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

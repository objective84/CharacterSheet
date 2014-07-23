/**
 * Created by Peter's Desktop on 7/22/2014.
 */
define('PageControllerMap', [], function() {
    function PageControllerMap() {
        var _regExp;
        var _pageControllerClass;

        this.setRegExp = function(value) {
            _regExp = value;
        };

        this.getRegExp = function() {
            return _regExp;
        };

        this.setPageControllerClass = function(value) {
            _pageControllerClass = value;
        };

        this.getPageControllerClass = function() {
            return _pageControllerClass;
        };
    }

    PageControllerMap.createMappedPageController = function(regExpString, pageController) {
        var mappedPageController = new PageControllerMap();
        mappedPageController.setRegExp(new RegExp(regExpString));
        mappedPageController.setPageControllerClass(pageController);
        return mappedPageController;
    };

    return PageControllerMap;
});

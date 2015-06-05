/**
 * Created by Andy on 5/5/2015.
 */
app.controller('editActionController', function($scope, $modalInstance, action) {

    $scope.action = action;

    $scope.ok = function () {
        $modalInstance.close('ok');
    };

    $scope.cancel = function () {
        $modalInstance.dismiss('cancel');
    };


})
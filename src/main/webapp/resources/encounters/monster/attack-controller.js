/**
 * Created by Andy on 5/5/2015.
 */
app.controller('attackController', function($scope, $modalInstance, action) {

    $scope.action = action;

    $scope.ok = function () {
        $modalInstance.close('ok');
    };

    $scope.cancel = function () {
        $modalInstance.dismiss('cancel');
    };

    var randomD20 = Math.floor(Math.random() * 20 + 1);
    $scope.rollD20 = function(){
        return randomD20;
    }
})
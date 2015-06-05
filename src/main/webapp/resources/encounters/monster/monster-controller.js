/**
 * Created by Andy on 5/5/2015.
 */
app.controller('monsterController', function($scope, $modal) {
    $scope.oneAtATime = true;
    $scope.hpType = 'success';
    $scope.groups = [
        {
            title: 'Dynamic Group Header - 1',
            content: 'Dynamic Group Body - 1'
        },
        {
            title: 'Dynamic Group Header - 2',
            content: 'Dynamic Group Body - 2'
        }
    ];

    $scope.updateHPBarColor = function (monster) {
        if ((monster.maxHitPoints - monster.currentHitPoints)/monster.maxHitPoints < .33){
            $scope.hpType = 'danger';
        }
        if ((monster.maxHitPoints - monster.currentHitPoints)/monster.maxHitPoints < .66) {
            $scope.hpType = 'warning';
        }
        if ((monster.maxHitPoints - monster.currentHitPoints)/monster.maxHitPoints >= .66) {
            $scope.hpType = 'success';
        }
    }

    $scope.open = function (action) {
        var modalInstance = $modal.open({
            animation: true,
            templateUrl: ctx + '/resources/encounters/monster/attack.html',
            controller: 'attackController',
            size: 'sm',
            resolve: {
                action: function () {
                    return action;
                }
            }
        });

        modalInstance.result.then(function (selectedItem) {
            $scope.selected = selectedItem;
        }, function () {

        });
    };

    $scope.openEditPopup = function (action) {
        var modalInstance = $modal.open({
            animation: true,
            templateUrl: ctx + '/resources/encounters/monster/edit-action.html',
            controller: 'editActionController',
            size: 'lg',
            resolve: {
                action: function () {
                    return action;
                }
            }
        });

        modalInstance.result.then(function (selectedItem) {
            $scope.selected = selectedItem;
        }, function () {

        });
    };
})
/**
 * Created by Andy on 6/1/2015.
 */
var app = angular.module('EncountersApp', ['ui.bootstrap']);

app.controller('EncounterListController', function($scope, $http){
    $scope.monsters = [];

    $http.get('monsters')
        .success(function(data){
            $scope.monsters = data;
        })
        .error(function(data){
            //TODO add some error handling
        });
    $scope.addSavingThrow = function(){
        $scope.newMonster.savingThrows.push($scope.newLanguage);
        $scope.newLanguage = {};
    }

    $scope.addSkill = function(){
        $scope.newMonster.skills.push($scope.newSkill);
        $scope.newSkill = {name:'', modifier: ''};
    }

    $scope.addResistance = function(){
        $scope.newMonster.resistances.push($scope.newResistance);
        $scope.newResistance = '';
    }

    $scope.addDamageImmunity = function(){
        $scope.newMonster.damageImmunities.push($scope.newDamageImmunity)
        $scope.newDamageImmunity = '';
    }

    $scope.addConditionImmunity = function(){
        $scope.newMonster.conditionImmunities.push($scope.newConditionImmunity)
        $scope.newConditionImmunity = '';
    }

    $scope.addSense = function(){
        $scope.newMonster.senses.push($scope.newSense);
        $scope.newSense = '';
    }

    $scope.addLanguage = function(){
        $scope.newMonster.languages.push($scope.newLanguage);
        $scope.newLanguage = '';
    }

    $scope.addTrait = function(){
        $scope.newMonster.traits.push($scope.newTrait);
        $scope.newTrait = {name:'', trait:''};
    }

    $scope.addAction = function(){
        $scope.newMonster.actions.push($scope.newAction);
        $scope.newAction = {name:'', type:'', modifier:'',range:'',target:'',
            damage:{diceNumber:'', diceType:''}};
    }

    $scope.addMonster = function(){
        $scope.monsters.push($scope.newMonster);
    }

    $scope.getAbilityModifier = function(ability){
        return Math.floor((ability-10)/2)
    }
});
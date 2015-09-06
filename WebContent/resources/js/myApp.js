/**
 * Angular.js javascript coding
 */
(function(){
	var app1 = angular.module('names1', []);
	app1.controller('controller1', function($scope) {
	    $scope.firstName = "John";
	    $scope.lastName = "Doe";
	});
	
	var app2 = angular.module('names2', []);
	app2.controller('controller2', function($scope) {
	    $scope.bla = "me";
	    $scope.blabla = "you";
	});
})(); //EOF function wrapper

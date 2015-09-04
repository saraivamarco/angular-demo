var app = angular.module('php', []);
app.controller('customersCtrl', function($scope, $http) {
    $http.get("http://www.w3schools.com/angular/customers_mysql.php")
    .success(function (response) {$scope.names = response.records;});
});
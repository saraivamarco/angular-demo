var app = angular.module('.net', []);
app.controller('customersCtrl', function($scope, $http) {
    $http.get("http://www.w3schools.com/angular/customers_sql.aspx")
    .success(function (response) {$scope.names = response.records;});
});
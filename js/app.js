var app = angular.module('StarterApp', ['ngMaterial']);
var id = 1;

app.service('getValService', function($http) {
    this.getVal = function() {
        return $http.post('controller.php');
    };
});
app.service('delService', function($http) {
    this.delVal = function(id) {
    	var id = 1;
        return $http.post('controller.php',id);
    };
});

app.controller('LoadValueController', function($scope, getValService,delService,$filter) {
    $scope.isSearching = false;
    $scope.loadData = function() {
         $scope.isSearching = true;
        getValService.getVal().then(function(data) {
            $scope.values = data.data.data;
             $scope.isSearching = false;
        });
    };

    $scope.delData =function(id){
         $scope.isSearching = true;
    	 delService.delVal(id).then(function(data) {
           alert(id);
        });
         $scope.isSearching = false;
    };
});
var app = angular.module('StarterApp', ['ngMaterial']);

app.service('getValService', function($http) {
    this.getVal = function() {
        return $http.get('controller.php');
    };
    this.delVal = function(id) {
        return $http.post('controller.php',id);
    };
});

app.controller('LoadValueController', function($scope, getValService,$filter) {
    $scope.isSearching = false;
    $scope.showHeader = true;
    $scope.loadData = function() {
        $scope.isSearching = true;
        getValService.getVal().then(function(data,status) {
            console.log(data.data)
            $scope.values = data.data;
            var a = angular.fromJson(data);
            $scope.isSearching = false;
        });
        $scope.showHeader = false;
    };

    $scope.delData =function(val){
         $scope.isSearching = true;
         var id = {
            "id" : val
         };
    	 getValService.delVal(id).then(function(data,status) {
           alert("Data deleted succesfully");
           $scope.loadData();
        });
         $scope.isSearching = false;
         $scope.showHeader = false;
    };
});
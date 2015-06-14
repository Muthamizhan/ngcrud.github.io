var app = angular.module('StarterApp', ['ngMaterial']);

app.service('getValService', function($http) {
    this.getVal = function() {
        return $http.get('controller.php');
    };
});
app.service('delService', function($http) {
    this.delVal = function(id) {
        return $http.post('controller.php',id);
    };
});

app.controller('LoadValueController', function($scope, getValService,delService,$filter) {
    $scope.isSearching = false;
    $scope.showHeader = true;
    $scope.loadData = function() {
        $scope.isSearching = true;
        getValService.getVal().then(function(data,status) {
            $scope.values = data.data.data;
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
    	 delService.delVal(id).then(function(data,status) {
           alert("Data deleted succesfully");
           $scope.loadData();
        });
         $scope.isSearching = false;
         $scope.showHeader = false;
    };
});
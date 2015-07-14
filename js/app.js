var app = angular.module('StarterApp', ['ngRoute','ngAnimate','ngMaterial']);

/*Services to pass vvalue to back*/
app.service('getValService', function($http) {
    this.getVal = function() {
        return $http.get('controller.php');
    };
    this.editVal = function(id) {
        return $http.post('controller.php', id);
    }
    this.updateVal = function(id) {
        return $http.post('controller.php', id);
    };
    this.delVal = function(id) {
        return $http.post('controller.php', id);
    };
});

/*App main Controller*/
app.controller('LoadValueController', function($scope, getValService, $filter) {
    /*default values*/
    $scope.name = '';
    $scope.phone = '';
    $scope.id = '';

    $scope.isSearching = false;
    $scope.showHeader = true;
    $scope.loadData = function() {
        $scope.isSearching = true;
        getValService.getVal().then(function(data, status) {
            $scope.values = data.data;
            console.log($scope.values[3])
            $scope.isSearching = false;
        });
        $scope.showHeader = false;
    };


    $scope.delData = function(val) {
        $scope.isSearching = true;
        var id = {
            "id": val,
            "edit": 0
        };
        getValService.delVal(id).then(function(data, status) {
            alert("Data deleted succesfully");
            $scope.loadData();
        });
        $scope.isSearching = false;
        $scope.showHeader = false;
    };

    $scope.editData = function(val) {
        var id = {
            "id": val,
            "edit": 1
        }
        getValService.editVal(id).then(function(data, status) {
            var arr = new Array();
            var values = data.data;
       
            $scope.name = values[0].name;
            $scope.phone = values[0].Phone;
            $scope.id = values[0].id;

        });
    };
    $scope.updateData = function(name,phone){
      var data = {
        "name" : name,
        "id" : $scope.id,
        "Phone" : phone,
        "edit" : 2
      };
      getValService.updateVal(data).then(function(data, status) {
        alert("Update succesfully");
        $scope.loadData();
    });
  };
});

/*Page Routes*/
app.config(function($routeProvider) {
    $routeProvider
        .when('/', {
            templateUrl: 'partials/list.html'
        })
        .when('/edit', {
            templateUrl: 'partials/edit.html',

        })
        .otherwise({
            redirectTo: '/'
        });
});

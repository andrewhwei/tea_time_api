(function () {
  "use strict";

  angular.module("app").controller("teasCtrl", ['$scope', '$http', function($scope, $http) {

    $scope.setup = function() {
      $http.get("/api/v1/teas.json").then(function(response) {
        $scope.teas = response.data;
      });
    }

    $scope.addTea = function(name, origin, weight, in_stock) {
      var tea = {name: name, origin: origin, weight: weight, in_stock: in_stock};

      $http.post("/api/v1/teas.json", tea).then(function(response) {
        $scope.teas.push(response.data);
      }, function(error) {
        $scope.errors = error.data.errors;
      });
    }

    $scope.deleteTea = function(tea) {
      $http.delete("/api/v1/teas/" + tea.id + ".json").then(function(response) {
        var index = $scope.teas.indexOf(tea);
        $scope.teas.splice(index, 1);
      });
    }

    $scope.orderColumn = function(attribute) {
      if (attribute != $scope.orderAttribute) {
        $scope.descending = false;
      } else {
        $scope.descending = !$scope.descending;
      }

      $scope.orderAttribute = attribute;
    }

    window.$scope = $scope;
  }]);
})();
(function () {
  "use strict";

  angular.module("app").controller("teasCtrl", function($scope, $http) {

  $scope.setup = function() {
    $http.get("/api/v1/teas.json").then(function(response) {
      $scope.teas = response.data;
    });
  }

  window.$scope = $scope;
  });
})();
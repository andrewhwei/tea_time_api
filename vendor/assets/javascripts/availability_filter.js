angular.module("availabilityFilter", []).filter('availability', [function () {
  return function(teas) {
    var tempTeas = [];
    if (teas) {
      for (var i = 0; i < teas.length; i++) {
        if (teas[i].weight > 10) {
          tempTeas.push(teas[i]);
        }
      }
    return tempTeas;
    }
  }
}]);
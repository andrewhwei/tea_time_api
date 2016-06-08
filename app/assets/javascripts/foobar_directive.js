angular.module("app").directive('foobar', function() {
  return {
    restrict: 'E',
    template: "<h1>Yo, I'm a directive.</h1>"
  }
})
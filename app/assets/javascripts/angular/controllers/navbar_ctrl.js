"use strict";

angular.module('urbanite').controller('NavCtrl', ['$scope', '$location',
  function($scope, $location) {
    $scope.isCollapsed = true;
    $scope.navClass = function (page) {
      var currentRoute = $location.path().substring(1) || 'home';
      return page === currentRoute ? 'active' : '';
    };
  }
]);
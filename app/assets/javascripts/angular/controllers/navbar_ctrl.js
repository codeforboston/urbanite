"use strict";

var NavCtrl = function($scope, $location) {
  $scope.isCollapsed = true;
  $scope.navClass = function (page) {
    var currentRoute = $location.path().substring(1) || 'home';
    return page === currentRoute ? 'active' : '';
  };
};

// Avoid minification of the injected dependencies by the assets pipeline
NavCtrl.$inject = ['$scope', '$location'];
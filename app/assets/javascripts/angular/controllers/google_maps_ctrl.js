'use strict';

var GoogleMapsCtrl = function ($scope) {
  angular.extend($scope, {
    center: {
      latitude: 42.367125,
      longitude: -71.085491
    },
    markers: [],
    zoom: 15
  });
};

// Avoid minification of the injected dependencies by the assets pipeline
GoogleMapsCtrl.$inject = ['$scope'];
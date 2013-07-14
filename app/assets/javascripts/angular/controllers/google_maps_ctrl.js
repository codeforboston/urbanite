'use strict';

angular.module('urbanite').controller('GoogleMapsCtrl', ['$scope',
  function ($scope) {
    angular.extend($scope, {
      center: {
        latitude: 42.367125,
        longitude: -71.085491
      },
      markers: [],
      zoom: 15
    });
  }
]);

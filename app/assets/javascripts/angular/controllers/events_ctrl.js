/**
 * License goes here
 */

'use strict';

angular.module('urbanite').controller('EventsCtrl', ['$scope', '$http',
  function ($scope, $http) {
    $http.get('events.json')
        .success(function (data) {
          $scope.events = data;
        });
  }
]);

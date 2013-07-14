/**
 * License goes here
 */

'use strict';

angular.module('urbanite').controller('EventsCtrl', ['$scope', 'Events',
  function ($scope, Events) {
    $scope.events = Events.query();
  }
]);

angular.module('urbanite').controller('EventByIdCtrl', ['$scope', '$routeParams', 'EventById',
  function ($scope, $routeParams, EventById) {
    $scope.event = EventById.get({eventId: $routeParams.eventId}, function(event) {
      $scope.name = event.name;
    });
  }
]);
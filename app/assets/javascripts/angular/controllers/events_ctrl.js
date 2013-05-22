/**
 * License goes here
 */

'use strict';

var events = angular.module('events', []);

events.controller('EventsCtrl', function ($scope, $http) {
  $http.get('events.json')
    .success(function(data) {
      $scope.events = data;
    });
});


//TODO (Jose) test that this works now that this is a module
// Avoid minification of the injected dependencies by the assets pipeline
events.$inject = ['$scope', '$http'];

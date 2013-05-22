/**
 * License goes here
 */

'use strict';

var events = angular.module('events', []);

var EventsCtrl = function ($scope, $http) {
  $http.get('events.json')
    .success(function (data) {
      $scope.events = data;
    });
}

events.controller('EventsCtrl', EventsCtrl);


//TODO (Jose) test that this works now that this is a module
// Avoid minification of the injected dependencies by the assets pipeline
EventsCtrl.$inject = ['$scope', '$http'];

//Playing with a different way of getting functions out of the global scope but still being able
//to write them outside of the angular wiring code (using an auto-executing main function)

(function () {
  "use strict";

  var eventsServices = angular.module('eventsServices', ['ngResource']);

  var getAllEvents = function ($resource) {
    return $resource('events.json', {}, {
      query: {method:'GET', params:{}, isArray:true}
    });
  };

  eventsServices.factory('Events', getAllEvents);

  var getEventById = function ($resource) {
    return $resource('events/:eventId.json', {}, {
      query: {method:'GET', params:{eventId: 'eventId'}, isArray:true}
    });
  };

  eventsServices.factory('EventById', getEventById);

  getAllEvents.$inject = ['$resource'];
  getEventById.$inject = ['$resource'];
}());

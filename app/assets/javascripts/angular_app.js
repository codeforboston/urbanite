/**
 * License goes here
 */

'use strict';

angular.module('urbanite', ['ui.bootstrap', 'google-maps', 'eventsServices']).
  config(["$httpProvider", "$routeProvider", function ($httpProvider, $routeProvider) {
    //Angular needs to send the Rails CSRF token with each post request.
    var meta = document.getElementsByTagName('meta'),
        i;
    for (i in meta) {
      if (meta[i].name === 'csrf-token') {
        $httpProvider.defaults.headers.common['X-CSRF-Token'] = meta[i].content;
        break;
      }
    }

    //Routing
    $routeProvider.when('/about', {
      templateUrl: '/assets/templates/about/about.html',
      controller: 'AboutController'
    }).
    when('/events/:eventId', {
      templateUrl: '/assets/templates/event/event.html',
      controller: 'EventByIdCtrl'
    }).
    otherwise({ redirectTo: '/' });

  }]);
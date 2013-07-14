/**
 * License goes here
 */

'use strict';

/**
 * Angular needs to send the Rails CSRF token with each post request.
 *
 * Here we get the token from the meta tags (make sure <%= csrf_meta_tags %>
 * is present in your layout.)
 */
angular.module('urbanite', ['ui.bootstrap', 'google-maps']).
  // configure our http requests to include the Rails CSRF token
  config(["$httpProvider", "$routeProvider", function (p, $routeProvider) {
    var m = document.getElementsByTagName('meta'),
      i;
    for (i in m) {
      if (m[i].name === 'csrf-token') {
        p.defaults.headers.common['X-CSRF-Token'] = m[i].content;
        break;
      }
    }

    $routeProvider.when('/about', {
      templateUrl: '/assets/templates/about/about.html',
      controller: 'AboutController'
    }).
    otherwise({ redirectTo: '/' });

  }]);
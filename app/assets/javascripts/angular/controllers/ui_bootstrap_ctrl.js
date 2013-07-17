'use strict';

angular.module('urbanite').controller('TabsCtrl', ['$scope',
  function ($scope) {
    $scope.navType = 'tabs';
  }
]);

angular.module('urbanite').controller('CollapseCtrl', ['$scope',
  function ($scope) {
    $scope.isCollapsed = false;
  }
]);

angular.module('urbanite').controller('AccordionCtrl', ['$scope', 'Events',
  function ($scope, Events) {
    $scope.oneAtATime = true;
    $scope.events = Events.query();
  }
]);

angular.module('urbanite').controller('RatingCtrl', ['$scope',
  //TODO (use) Ratings will have to be persisted: dumb fivers for now!
  function ($scope) {
    $scope.rate = 5;
  }
]);
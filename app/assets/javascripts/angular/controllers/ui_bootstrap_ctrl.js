'use strict';

var TabsCtrl = function ($scope) {
  $scope.navType = 'tabs';
};

var CollapseCtrl = function ($scope) {
  $scope.isCollapsed = false;
}

var AccordionCtrl = function ($scope) {
  $scope.oneAtATime = true;

  //TODO (user) all this data is fake; grab it from a service
  $scope.groups = [
    {
      title: "Event: Gatsby (dir. Baz Luhrmann)",
      content: "This week at Backbar, Johnny D's, come see Gatsby " +
          "(dir. Baz Luhrmann) in a once-in-a-lifetime whirlwind performance. Doors at 12:00 N."
    },
    {
      title: "'Photograph' (dir. M. Baxter)",
      content: "This week at Backbar, come see 'Photograph' (dir. M. Baxter) in a " +
          "once-in-a-lifetime whirlwind performance. Doors at 12:00 N."
    },
    {
      title: "'Don't come near me' (dir. M. Baxter)",
      content: "This week at Backbar, come see 'Don't come near me' (dir. M. Baxter) in a " +
          "once-in-a-lifetime whirlwind performance. Doors at 12:00 N."
    },
    {
      title: "'Go away!' (dir. M. Baxter)",
      content: "This week at Backbar, come see 'Go Away' (dir. M. Baxter) in a " +
          "once-in-a-lifetime whirlwind performance. Doors at 12:00 N."
    },
    {
      title: "'Photograph' (dir. M. Baxter)",
      content: "This week at Backbar, come see 'Photograph' (dir. M. Baxter) in a " +
          "once-in-a-lifetime whirlwind performance. Doors at 12:00 N."
    }
  ];
}

//TODO (use) Ratings will have to be persisted
var RatingCtrl = function ($scope) {
  $scope.rate = 5;
};

// Avoid minification of the injected dependencies by the assets pipeline
TabsCtrl.$inject = ['$scope'];
CollapseCtrl.$inject = ['$scope'];
AccordionCtrl.$inject = ['$scope'];
RatingCtrl.$inject = ['$scope'];
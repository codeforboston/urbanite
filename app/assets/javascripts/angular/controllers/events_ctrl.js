function EventsCtrl($scope, $http) {
  $http.get('events.json')
    .success(function(data) {
      $scope.events = data;
    });
}

// Avoid minification of the injected dependencies by the assets pipeline
EventsCtrl.$inject = ['$scope', '$http'];

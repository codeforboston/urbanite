function eventsCtrl($scope, $http) {
  $http.get('events.json')
    .success(function(data) {
      $scope.events = data;
    });
}

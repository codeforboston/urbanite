var NavCtrl = function($scope){
  $scope.isCollapsed = true;
};

// Avoid minification of the injected dependencies by the assets pipeline
NavCtrl.$inject = ['$scope'];
"use strict";

angular.module('urbanite').controller('AboutController', ['$scope',
  function ($scope) {
    //TODO (user) the data rendered here will be served from the server... eventually!
    $scope.app_data = {
      title: "Urbanite",
      intro_msg: "A Web App that allows users to access 'hidden' cultural gems in their local " +
          "environment by leveraging social media streams from local venues and cultural " +
          "organizations like bands, artists, authors, chefs, etc."
    };
  }
]);
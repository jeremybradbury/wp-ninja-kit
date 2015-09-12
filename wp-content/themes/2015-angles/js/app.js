var angles = angular.module( 'angles', [] );

// Set the configuration
angles.run( ['$rootScope', function($rootScope) {

	// Variables defined by wp_localize_script
	$rootScope.api = anglesJS.api;

}]);

// Add a controller
angles.controller( 'wordpress', ['$scope', '$sce', '$http', function( $scope, $sce, $http ) {

  // trust database data
  $scope.trust = function (html) { return $sce.trustAsHtml(html); };
  
	// load posts from the WordPress API
	$http({
		method: 'GET',
		url: $scope.api,
		params: {
			'filter[posts_per_page]' : 10
		},
	}).
	success( function( data, status, headers, config ) {
		//console.log( $scope.api );
    //console.log( data );
		$scope.posts = data; 
	}).
	error(function(data, status, headers, config) {});

}]);

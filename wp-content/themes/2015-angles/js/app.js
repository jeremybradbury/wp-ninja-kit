var angles = angular.module( 'angles', [] );

// Set the configuration
angles.run( ['$rootScope', function($rootScope) {

	// Variables defined by wp_localize_script
	$rootScope.apiuri = anglesJS.api;

}]);

// Add a controller
angles.controller( 'wordpress', ['$scope', '$sce', '$http', function( $scope, $sce, $http ) {
  $scope.watchLast = 0;  
  
  // trust html method
  $scope.trust = function (html) { return $sce.trustAsHtml(html); };
  
  // get post(s) method
  $scope.getPost = function ( id ) {
    $scope.watchDiff = Date.now() - $scope.watchLast;
    if($scope.watchDiff < 1000 ){
      //console.log('too soon');
      return false;
    }
    //console.log( $scope.watchDiff );
    var param = {};
    var theurl = $scope.apiuri + 'get_posts';
    var single = false;
    if (typeof id !== 'undefined') {
      if(id!=""){
        // single post if id is passed
        param = { 'id' : id };
        theurl = $scope.apiuri + 'get_post';
        single = true;
        // slug provided
        if(isNaN(id)){
      		param = { 'slug' : id };
      	}
      } 
    }
  	// load posts from the WordPress API
    $http({
      method: 'GET',
      url: theurl,
      params: param,
    }).
    success( function( data, status, headers, config ) {
      //console.log( $scope.apiuri );
      if(single){
        $scope.posts = [data.post]; // return lone 'post' array wrapped
      } else {
      	$scope.posts = data.posts; // return 'posts' array
      }
      //console.log( $scope.posts );
      $scope.watchLast = Date.now();
    }).
    error(function(data, status, headers, config) {
      // load home and leave error in console
      //$scope.getPost();
      // OR bail to  bail to 404
      window.top.location.href = '/not-found#error';
    });
  };
  
  // watch url for # changes and navigate (external or manually typed links)
  $scope.$watch(function () {
      return location.hash
  }, function (value) {
    	value = value.replace('#','');
    	//console.log('calling watcher', value);
      $scope.getPost(value);
  });

}]);

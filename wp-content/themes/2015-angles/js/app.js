var angles = angular.module( 'angles', [] );

// Set the configuration
angles.run( ['$rootScope', function($rootScope) {

	// Variables defined by wp_localize_script
	$rootScope.apiuri = anglesJS.api;
  
  // blur anchors
	jQuery("a[rel='home']").focus(function(){this.blur()});
  $rootScope.blur = function () { jQuery("a[rel='home']").focus(); return false; };

}]);

// Add a controller
angles.controller( 'wordpress', ['$scope', '$sce', '$http', function( $scope, $sce, $http ) { 
  
  // trust html method
  $scope.trust = function (html) { return $sce.trustAsHtml(html); };
  
  // get post(s) method
  $scope.getPosts = function ( id ) {
    var param = { };
    if (typeof id !== 'undefined') {
      if( id.trim() != '' ){ return $scope.getPost( id ); }   
    }
  	// load posts from the WordPress API
    $http({
      method: 'GET',
      url: $scope.apiuri + 'get_posts',
      params: param,
    }).
    success( function( data, status, headers, config ) {
      //console.log( $scope.apiuri );
      $scope.posts = data.posts; // return 'posts' array
      $scope.post = false;
      console.log( $scope.posts );
    }).
    error(function(data, status, headers, config) {
      // bail to 404
      window.top.location.href = '/not-found-error';
    });
  };
  
  // get post method
  $scope.getPost = function ( id ) {
    if (typeof id === 'undefined') {
     return console.log('id required', id); 
    }
    // single post if id is passed
    var param = { 'id' : id };
    // slug provided
    if(isNaN(id)){ 
      param = { 'slug' : id }; 
    }
    // load post from the WordPress API
    $http({
      method: 'GET',
      url: $scope.apiuri + 'get_post',
      params: param,
    }).
    success( function( data, status, headers, config ) {
      //console.log( $scope.apiuri );
      $scope.posts = [data.post]; // return lone 'post' array wrapped
      $scope.post = data.post; // return lone 'post' 
      //console.log( $scope.posts.length );
    }).
    error(function(data, status, headers, config) {
      // bail to 404
      window.top.location.href = '/not-found-error';
    });
  };

  // get sidebar method
  $scope.getSidebar = function ( id ) {
    var param = { 'sidebar_id' : 'sidebar-1' };
    var theurl = $scope.apiuri + 'widgets/get_sidebar';
    if (typeof id !== 'undefined') { param = { 'sidebar_id' : id }; } 

  	// load widgets from the WordPress API
    $http({
      method: 'GET',
      url: theurl,
      params: param,
    }).
    success( function( data, status, headers, config ) {
      // console.log( data.widgets );
      $scope.widgets = data.widgets; // return 'widgets'
    }).
    error(function(data, status, headers, config) {
      console.log(data, status, headers, config);
    });
  };
  
  // primary navigation
  jQuery(window).bind('hashchange', function () {
    var pageNav = window.top.location.hash.replace('#','');
    // console.log('navigating to: /', pageNav);
    $scope.getPosts(pageNav);
	});
  
  // initial load
  var pageNav = window.top.location.hash;
  pageNav = pageNav.replace('#','');
  $scope.getPosts(pageNav);
  $scope.getSidebar();

}]);

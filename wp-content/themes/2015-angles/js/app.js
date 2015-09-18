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
/** content **/
  $scope.trust = function (html) { return $sce.trustAsHtml(html); };
// getPosts()
  $scope.getPosts = function ( id ) {
    var param = { }, page;
    if (typeof id !== 'undefined' && id.trim() != '' ){ 
      if(id.search('page')>=0) {
        // wee we're paging
        $scope.p = parseInt(id.split('/')[1]);
        console.log($scope.p);
        param = { 'page' : $scope.p }
      } else {
            // single post request
           return $scope.getPost( id );
      }   
    } else {
      $scope.p = 1;
    }
    $http({
      method: 'GET',
      url: $scope.apiuri + 'get_posts',
      params: param,
    }).
    success( function( data, status, headers, config ) {
      $scope.data = data.posts; // return 'posts' array
      $scope.posts = parseInt(data.count_total);
      $scope.pages = data.pages;
      if ('undefined' !== typeof $scope.prev) { $scope.prev = undefined; }
    	if ('undefined' !== typeof $scope.next) { $scope.next = undefined; }
      //console.log( $scope);
    }).
    error(function(data, status, headers, config) {
      window.top.location.href = '/not-found-error'; // bail to 404
    });
  };
// getPost()
  $scope.getPost = function ( id ) {
    if ('undefined' === typeof id) { return console.log('id required', id); }
    var param = { 'id' : id }; // single post if id is passed
    if(isNaN(id)){ param = { 'slug' : id }; } // slug provided
    $http({
      method: 'GET',
      url: $scope.apiuri + 'get_post',
      params: param,
    }).
    success( function( data, status, headers, config ) {
      console.log( id );
      $scope.data = [data.post]; // return 'post' array wrapped 
      $scope.pages = 0;
      $scope.p = -1;
      if('undefined' !== typeof data.next_url) { $scope.prev = data.next_url.split('/')[3]; } 
      else { $scope.p = 1; }
      if('undefined' !== typeof data.previous_url) { $scope.next = data.previous_url.split('/')[3]; } 
      else { $scope.p = 0; }
      //console.log( data, $scope );
    }).
    error(function(data, status, headers, config) {
      window.top.location.href = '/not-found-error'; // bail to 404
    });
  };
// getSidebar()
  $scope.getSidebar = function ( id ) {
    var param = { 'sidebar_id' : 'sidebar-1' };
    var theurl = $scope.apiuri + 'widgets/get_sidebar';
    if ('undefined' !== typeof id) { param = { 'sidebar_id' : id }; } 
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
/** /content **/
  
/** route **/
  $scope.range = function (start, end) {
    var ret = [];
    if (!end) { end = start +1; start = 1; }
    for (var i = start; i < end; i++) { ret.push(i); }
    return ret; // indexed array of range length
  };
  $scope.nextPage = function(){
  	if ('undefined' !== typeof $scope.next) {
      return $scope.next;
    } else {
    	if ('undefined' !== typeof $scope.p) { return 'page/' + ($scope.p + 1); }
    }
  }  
  $scope.prevPage = function(){
  	if ('undefined' !== typeof $scope.prev) {
      return $scope.prev;
    } else {
      if ('undefined' !== typeof $scope.p) { return 'page/' + ($scope.p - 1); } 
    }
  }
// #anchor based navigation
  jQuery(window).bind('hashchange', function () {
    var nav = window.top.location.hash.replace('#','');
    // console.log('navigating to: /', nav);
    $scope.getPosts(nav);
	});
/** /route **/

// initial content load
  $scope.getPosts(window.top.location.hash.replace('#',''));
  $scope.getSidebar();

}]);

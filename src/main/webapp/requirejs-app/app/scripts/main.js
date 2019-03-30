// the app/scripts/main.js file, which defines our RequireJS config
require.config({
  paths: {
    angular: 'vendor/angular.min',
    jquery: 'vendor/jquery',
    domReady: 'vendor/domReady'
  },
  shim: {
    angular: {
      deps: [ 'jquery'],
      exports: 'angular'
    }
  }
});
require([
              'angular',
         	  'app',
         	  'domReady',
         	  'services/userService',
         	  'controllers/rootController',
         	  'directives/ngbkFocus'
			// Any individual controller, service, directive or filter file
			// that you add will need to be pulled in here.
			// This will have to be maintained by hand.
		],
		function (angular, app) {
			'use strict';
			app.config(['$routeProvider',
				function($routeProvider) {
						// Define your Routes here
				$routeProvider.when('/', {
			          templateUrl: 'views/root.html',
			          controller: 'RootCtrl'
			        });
				}
			]);
			domReady(function() {
			      angular.bootstrap(document, ['MyApp']);
			      // The following is required if you want AngularJS Scenario tests to work
			      $('html').addClass('ng-app: MyApp');
			    });
		}
);
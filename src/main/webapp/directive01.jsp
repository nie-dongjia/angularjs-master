<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app = "app">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>标识符</title>
</head>
<body ng-controller="SomeController">
<button ng-click="clickUnfocused()">
Not focused
</button>
<button ngbk-focus ng-click="clickFocused()">
I'm very focused!
</button>
<div>{{message.text}}</div>
<script src="${pageContext.request.contextPath}/resources/js/1.0.4/angular/angular.min.js"></script>
<script>
	var appModule = angular.module('app', []);
	appModule.directive('ngbkFocus', function() {
		return {
			link : function(scope, element, attrs, controller) {
				element[0].focus();
			}
		};
	});

	function SomeController($scope) {
		$scope.message = {
			text : 'nothing clicked yet'
		};
		$scope.clickUnfocused = function() {
			$scope.message.text = 'unfocused button clicked';
		};
		$scope.clickFocused = function() {
			$scope.message.text = 'focus button clicked';
		}
	}
</script>

</body>
</html>
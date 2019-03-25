<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="myApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>angular-master-chapter01</title>
</head>
<body ng-controller="StartController">

<form>
当前并发：<input ng-change="computeQueryPerSecond()" ng-model="data.currentSimultaneously"><br>
当前QPS:     {{data.queryPerSecond}}
</form>


<script src="${pageContext.request.contextPath}/resources/js/1.0.4/angular/angular.min.js"></script>
<script>
var myAppModule = angular.module('myApp', []);
myAppModule.controller('StartController',
function($scope) {
	$scope.data = { currentSimultaneously: 0 };
	computeQueryPerSecond = function() {
	$scope.data.queryPerSecond = $scope.data.currentSimultaneously * 10;
	};
	// 另一种方式 
	$scope.$watch('data.currentSimultaneously', computeQueryPerSecond);
});
</script>
</body>
</html>
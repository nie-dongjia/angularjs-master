<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="myApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>angular-master-chapter01</title>
</head>
<body ng-controller="TextController">
<h1>{{someText.message}}</h1>
<h1>{{someText.message}}</h1>
<h1>{{someText.message}}</h1>
<script src="${pageContext.request.contextPath}/resources/js/1.0.4/angular/angular.min.js"></script>
<script>
var myAppModule = angular.module('myApp', []);
myAppModule.controller('TextController',
function($scope) {
var someText = {};
someText.message = 'You have started your journey.';
$scope.someText = someText;
});
/***********************************************
	创建像这样的一个模型对象可以防止在
	$scope 对象中原型继承引起非预期的行为 
************************************************/
</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app='myAppModule'>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>angular-master-chapter01</title>
</head>
<body ng-controller="HelloController">
<p>{{greeting.text}}, World</p>
<p>{{greeting.text}}, World</p>
<p>{{greeting.text}}, World</p>
<script src="${pageContext.request.contextPath}/resources/js/1.0.4/angular/angular.min.js"></script>
<script>
//  如果不申明  则无效 
var myAppModule = angular.module('myAppModule', []);

function HelloController($scope, $location) {
	$scope.greeting = { text: 'Hello' };
	// use $location for something good here...
	}
</script>
</body>
</html>
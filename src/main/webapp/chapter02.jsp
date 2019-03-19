<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>angular-master-chapter01</title>
</head>
<body ng-controller="TextController">
<h1>{{someText}}</h1>
<script src="${pageContext.request.contextPath}/resources/js/1.0.4/angular/angular.min.js"></script>
<script>
function TextController($scope, $location) {
	$scope.greeting = { text: 'Hello' };
	// use $location for something good here...
	$scope.someText = 'You have started your journey.';
}
</script>
</body>
</html>
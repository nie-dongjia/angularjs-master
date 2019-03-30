<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app = "HomeModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Shopping Cart</title>
</head>
<body ng-controller="HomeController">
<h1>{{pageHeading | titleCase}}</h1>
<script src="${pageContext.request.contextPath}/resources/js/1.0.4/angular/angular.min.js"></script>
<script>
var homeModule = angular.module('HomeModule', []);

homeModule.filter('titleCase', function() {
	var titleCaseFilter = function(input) {
	var words = input.split(' ');
	for (var i = 0; i < words.length; i++) {
		words[i] = words[i].charAt(0).toUpperCase() + words[i].slice(1);
	}
	return words.join(' ');
	};
	return titleCaseFilter;
});
function HomeController($scope) {
	$scope.pageHeading = 'behold the majesty of your page title';
} 
</script>

</body>
</html>
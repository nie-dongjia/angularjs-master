<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app = "ShoppingModule">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Shopping Cart</title>
</head>
<body ng-controller="ShoppingController">
<h1>Shop!</h1>
	<table>
		<tr ng-repeat="item in items">
		<td>{{item.title}}</td>
		<td>{{item.description}}</td>
		<td>{{item.price | currency}}</td>
		</tr>
	</table>
<script src="${pageContext.request.contextPath}/resources/js/1.0.4/angular/angular.min.js"></script>
<script>

var shoppingModule = angular.module('ShoppingModule', []);
/*  shoppingModule.controller('ShoppingController',function($scope,Items){
	$scope.items = Items.query();
}); */
 function ShoppingController(Items,$scope) {
	$scope.items = Items.query();
} 
shoppingModule.factory('Items',function() {
		var items = {};
		items.query = function() {
		// In real apps, we'd pull this data from the server... 
		return [
	            {title: 'Paint pots', description: 'Pots full of paint', price: 3.95},
	            {title: 'Polka dots', description: 'Dots with polka', price: 2.95},
	            {title: 'Pebbles', description: 'Just little rocks', price: 6.95}
	          ];
		};
		return items;
});
</script>

</body>
</html>
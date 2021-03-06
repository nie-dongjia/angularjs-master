<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Your Shopping Cart</title>
</head>
<body ng-controller="CartController">
<div ng-repeat='item in items'>
  <span>{{item.title}}</span>
  <input ng-model='item.quantity'>
  <span>{{item.price | currency}}</span>
  <span>{{item.price * item.quantity | currency}}</span>
  <button ng-click="remove($index)">Remove</button>
</div>

<script src="${pageContext.request.contextPath}/resources/js/1.0.4/angular/angular.min.js"></script>
<script>
function CartController($scope){
	$scope.someText = { title: 'Your Shopping Cart' };
	$scope.items = [
	                {title: 'Paint pots', quantity: 8, price: 3.95},
	                {title: 'Polka dots', quantity: 17, price: 12.95},
	                {title: 'Pebbles', quantity: 5, price: 6.95}
	              ];
	
    $scope.remove = function(index) {
      $scope.items.splice(index, 1);
    };
}
</script>
</body>
</html>
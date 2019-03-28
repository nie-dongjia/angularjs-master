<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Your Shopping Cart</title>
</head>
<body>
<div ng-controller="CartController">
	<div ng-repeat="item in items">
		<span>{{item.title}}</span> <input ng-model="item.quantity">
		<span>{{item.price | currency}}</span>
		<span>{{item.price * item.quantity | currency}}</span>
	</div>
	
	<div>Total: {{totalCart() | currency}}</div>
	<div>Discount: {{bill.discount | currency}}</div>
	<div>Subtotal: {{subTotal() | currency}}</div>
</div>
<script src="${pageContext.request.contextPath}/resources/js/1.0.4/angular/angular.min.js"></script>
<script>
function CartController($scope) {
	$scope.bill = {};
	$scope.items = [ {
		title : 'Paint pots',
		quantity : 8,
		price : 3.95
	}, {
		title : 'Polka dots',
		quantity : 17,
		price : 12.95
	}, {
		title : 'Pebbles',
		quantity : 5,
		price : 6.95
	} ];
	// 计算总额
	$scope.totalCart = function() {
		var total = 0;
		for (var i = 0, len = $scope.items.length; i < len; i++) {
			total = total + $scope.items[i].price
					* $scope.items[i].quantity;
		}
		return total;
	}
	// 计算实际 
	$scope.subTotal = function() {
		return $scope.totalCart() - $scope.bill.discount;
	};
	// 计算优惠 
	function calculateDiscount(newValue, oldValue, scope) {
		$scope.bill.discount = newValue > 100 ? 10 : 0;
	}
	// 
	$scope.$watch($scope.totalCart, calculateDiscount);
}
/* 
 *  watch 性能注意事项   
 *  totalCart()加一个调试断点， 它被调用了 6 次之后才渲染页面 
 */
</script>
</body>
</html>
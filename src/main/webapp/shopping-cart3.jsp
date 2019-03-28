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
	
	<div>Total: {{bill.totalCart| currency}}</div>
	<div>Discount: {{bill.discount | currency}}</div>
	<div>Subtotal: {{bill.subtotal | currency}}</div>
</div>
<script src="${pageContext.request.contextPath}/resources/js/1.0.4/angular/angular.min.js"></script>
<script>
function CartController($scope) {
	$scope.bill = {};
	$scope.items = [
	{title: 'Paint pots', quantity: 8, price: 3.95},
	{title: 'Polka dots', quantity: 17, price: 12.95},
	{title: 'Pebbles', quantity: 5, price: 6.95}
	];
	var calculateTotals = function() {
		var total = 0;
		for (var i = 0, len = $scope.items.length; i < len; i++) {
		total = total + $scope.items[i].price * $scope.items[i].quantity;
		}
		$scope.bill.totalCart = total;
		$scope.bill.discount = total > 100 ? 10 : 0;
		$scope.bill.subtotal = total - $scope.bill.discount;
	};
	$scope.$watch('items', calculateTotals, true);
}
/* 刷新只调用了一次  
 * 在数组中的每个
	 元素上创建$watch 监控变化，这样仅仅是重新计算$scope 属性中的 total，discount 和 subtotal。
	 为了实现这点，我们将用这几个属性来更新模板： 
 *
 */
</script>
</body>
</html>
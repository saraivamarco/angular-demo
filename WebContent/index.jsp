<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="store">
	<head>
	<link rel="stylesheet" type="text/css" href="resources/js/bootstrap-3.3.5-dist/css/bootstrap.min.css">
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Angular.JS JSP Hello World!</title>
	</head>
	<body ng-controller="StoreController as store">
		<script type="text/javascript" src="resources/js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="resources/js/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="resources/js/angular.min.js"></script>
		<script type="text/javascript" src="resources/js/app.js"></script>
				
		<div ng-repeat="product in store.products">
			<h1>{{store.product.name}}</h1>
			<h2>$ {{store.product.price}}</h2>
			<p>{{store.product.description}}</p>
			<button ng-show="store.product.canPurchase">Add to Cart</button>
		</div>
		
			
	</body>
</html>
<!-- @author marco -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML >
<html xmlns:ng="http://angularjs.org" ng-app="store">
	<head>
		<!-- JQuery -->
		<script type="text/javascript" src="resources/js/jquery/jquery-1.11.3.min.js"></script>
		<!-- Bootstrap -->
		<link rel="stylesheet" type="text/css" href="resources/js/bootstrap-3.3.5-dist/css/bootstrap.min.css">
		<script type="text/javascript" src="resources/js/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
		<!-- Angular -->
		<script type="text/javascript" src="resources/js/angular/angular.min.js"></script>
		<!-- Marco's code -->
		<link rel="shortcut icon" href="resources/images/marco/favicon.ico" />
		<link rel="stylesheet" type="text/css" href="resources/css/marco/app.css">
		<script type="text/javascript" src="resources/js/marco/products.js"></script>
		<script type="text/javascript" src="resources/js/marco/app.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Angular Demo</title>
	</head>
	<body ng-controller="StoreController as store">
	<div product-title>
	</div>
		<ul class="list-group">
			<li class="list-group-item" ng-repeat="product in store.products">
				<h3>
					{{product.name}}
					<em class="pull-right">{{product.price | currency}}</em>
					<img ng-src="{{product.images[0].thumb}}">
					<br/>{{product.description}}
				</h3>
				<!-- Product panels -->
				<product-panels></product-panels>
			</li>			
		</ul>		
	</body>
</html>
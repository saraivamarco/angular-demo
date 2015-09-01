<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="store">
	<head>
		<link rel="stylesheet" type="text/css" href="resources/js/bootstrap-3.3.5-dist/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="resources/css/app.css">
		<script type="text/javascript" src="resources/js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="resources/js/bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="resources/js/angular.min.js"></script>
		<script type="text/javascript" src="resources/js/app.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Angular.JS JSP Hello World!</title>
	</head>
	<body ng-controller="StoreController as store">
		<h1>Flatlander Crafted Gems</h1>
		<h2> - an Angular store - </h2>
		<ul class="list-group">
			<li class="list-group-item" ng-repeat="product in store.products">
				<h3>
					{{product.name}}
					<em class="pull-right">{{product.price | currency}}</em>
					<img ng-src="{{product.images[0].thumb}}">
					<br/>{{product.description}}
				</h3>
			</li>
		</ul>	
	</body>
</html>
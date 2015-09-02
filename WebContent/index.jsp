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
				<section ng-controller="PanelController as panel">
					<ul class="nav nav-pills">
						<li ng-class="{active:panel.isSelected(1)}"><a href ng-click="panel.selectTab(1)">Description</a></li>
						<li ng-class="{active:panel.isSelected(2)}"><a href ng-click="panel.selectTab(2)">Specifications</a></li>
						<li ng-class="{active:panel.isSelected(3)}"><a href ng-click="panel.selectTab(3)">Review</a></li>
					</ul>
					<div class="panel" ng-show="panel.isSelected(1)">
						<h4>Description</h4>
						<p>{{product.description}}</p>
					</div>
					<div class="panel" ng-show="panel.isSelected(2)">
						<h4>Specifications</h4>
						<p>None yet</p>
					</div>
					<div class="panel" ng-show="panel.isSelected(3)">
						<h4>Review</h4>
						<p>None yet</p>
					</div>
				</section>
				
			</li>			
		</ul>		
	</body>
</html>
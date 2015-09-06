<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML >
<html xmlns:ng="http://angularjs.org" ng-app="store">
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
						<li ng-class="{active:panel.isSelected(1)}"><a ng-click="panel.selectTab(1)">Description</a></li>
						<li ng-class="{active:panel.isSelected(2)}"><a ng-click="panel.selectTab(2)">Specifications</a></li>
						<li ng-class="{active:panel.isSelected(3)}"><a ng-click="panel.selectTab(3)">Review</a></li>
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
						<form name="reviewForm" ng-controller="ReviewController as reviewCtrl" ng-submit=" reviewForm.$valid && reviewCtrl.addReview(product)" novalidate>
							<blockquote ng-repeat="review in product.reviews">
				                <strong>{{review.stars}} Stars</strong>
				                {{review.body}}
				                <cite class="clearfix">- {{review.author}}</cite>
				            </blockquote>
				            
							<blockquote>
				                <strong>{{reviewCtrl.review.stars}} Stars</strong>
				                {{reviewCtrl.review.body}}
				                <cite class="clearfix">- {{reviewCtrl.review.author}}</cite>
				            </blockquote>
				
				            <!--  Review Form -->
				            <h4>Submit a Review</h4>
				            <fieldset class="form-group">
				              <select ng-model="reviewCtrl.review.stars" class="form-control" ng-options="stars for stars in [5,4,3,2,1]" title="Stars" required>
				                <option value="">Rate the Product</option>
				              </select>
				            </fieldset>
				            <fieldset class="form-group">
				              <textarea ng-model="reviewCtrl.review.body" class="form-control" placeholder="Write a short review of the product..." title="Review" required></textarea>
				            </fieldset>
				            <fieldset class="form-group">
				            	<input ng-model="reviewCtrl.review.author" type="email" class="form-control" placeholder="jimmyDean@example.org" title="Email" required/>
				            </fieldset>
				            <fieldset class="form-group">
				              <div>Review form is {{reviewForm.$valid}}</div>
				              <input type="submit" class="btn btn-primary pull-right" value="Submit Review" />
				            </fieldset>
						</form>
					</div>
				</section>
				
			</li>			
		</ul>		
	</body>
</html>
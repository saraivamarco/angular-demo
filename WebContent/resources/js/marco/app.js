/**
 * Angular.js javascript coding
 * @author marco
 */
(function(){
	var app = angular.module('store', []);
	
	/* Controllers */
	
	/**
	 * StoreController
	 */
	app.controller('StoreController', function(){
		this.products = gems;
	});
	
	/**
	 * PanelController
	 */
	app.controller('PanelController', function(){
		this.tab = 1;		
		this.selectTab = function(setTab){
			this.tab=setTab;
		};
		this.isSelected = function(checkTab){
			return this.tab===checkTab;
		};
	});
	
	/**
	 * ReviewController
	 */
	app.controller('ReviewController', function(){
		this.review = {};
		
		this.addReview = function(product) {
			product.reviews.push(this.review);
			this.review = {};
		};
	});
	
	/* Directives */
	app.directive('productTitle', function(){
		return {
			restrict: 'A', /* E stands for html element and A stands for attribute */
			templateUrl: 'product-title.jsp'
		};
	});
	
	/* Directives */
	app.directive('productPanels', function(){
		return {
			restrict: 'E', /* E stands for html element and A stands for attribute */
			templateUrl: 'product-panels.jsp',
			controller: function(){ //Same code as in PanelController
				this.tab = 1;				
				this.selectTab = function(setTab){
					this.tab=setTab;
				};
				this.isSelected = function(checkTab){
					return this.tab===checkTab;
				};
			},
			controllerAs: 'panel'
		};
	});
	
	
	/* Json Objects */
	var gems = [
		{
			name: 'Dodecahedron',
			price: 2.95,
			description: 'This is a Dodecahedron.',
			images: [
			   {
				   full: 'resources/images/marco/dodecahedron-01-full.png',
				   thumb: 'resources/images/marco/dodecahedron-01-thumb.png'
			   },
			   {
				   full: 'resources/images/marco/dodecahedron-02-full.jpg',
				   thumb: 'resources/images/marco/dodecahedron-02-thumb.jpg'
			   }
			],
			reviews:[
			],
			canPurchase: true,
			soldOut: false
		},
		{
			name: 'Pentagonal Gem',
			price: 5.95,
			description: 'This is a Pentagonal Gem.',
			images: [{
				full: 'resources/images/marco/pentagonal-01-full.png',
				thumb: 'resources/images/marco/pentagonal-01-thumb.png'
			}],
			reviews:[
			         /*
			   {
				   stars: 5,
				   body: 'I love this product',
				   author: 'joe@thomas.com'
			   },
			   {
				   stars: 1,
				   body: 'This product sucks',
				   author: 'tim@hater.com'
			   } */
			],
			canPurchase: false,
			soldOut: false
		},
	
	];
	

})(); //EOF function wrapper
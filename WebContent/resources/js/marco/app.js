/**
 * Angular.js javascript coding
 * @author marco
 */
(function(){
	var app = angular.module('store', ['store-products']);
	
	/* Controllers */
	
	/**
	 * StoreController (without services)
	 *//*
	app.controller('StoreController', function(){
		this.products = gems;
	});
	*/
	
	/**
	 * StoreController (with services)
	 */
	app.controller('StoreController', ['$http', function($http){		
		var store = this;
		store.products=[];
		
		$http.get('/products.json').success(function(data){
			store.products=data;
		});
	}]);
		
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
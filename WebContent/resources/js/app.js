/**
 * Angular.js javascript coding
 */
(function(){
	var app = angular.module('store', []);
	
	app.controller('StoreController', function(){
		this.products = gems;
	});
	
	
	var gems = [
		{
			name: 'Dodecadrehon',
			price: 2.95,
			description: '. . .',
			canPurchase: false,
			soldOut: false
		},
		{
			name: 'Pentagonal Gem',
			price: 5.95,
			description: '. . .',
			canPurchase: false,
			soldOut: false
		},
	
	];
	

})(); //EOF function wrapper
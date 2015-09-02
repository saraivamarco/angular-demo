/**
 * Angular.js javascript coding
 */
(function(){
	var app = angular.module('store', []);
	
	app.controller('StoreController', function(){
		this.products = gems;
	});
	
	app.controller('PanelController', function(){
		this.tab = 1;
		
		this.selectTab = function(setTab){
			this.tab=setTab;
		};
		this.isSelected = function(checkTab){
			return this.tab===checkTab;
		};
	});
	
	
	var gems = [
		{
			name: 'Dodecahedron',
			price: 2.95,
			description: 'This is a Dodecahedron.',
			images: [
			   {
				   full: 'resources/images/dodecahedron-01-full.png',
				   thumb: 'resources/images/dodecahedron-01-thumb.png'
			   },
			   {
				   full: 'resources/images/dodecahedron-02-full.jpg',
				   thumb: 'resources/images/dodecahedron-02-thumb.jpg'
			   }
			],
			canPurchase: true,
			soldOut: false
		},
		{
			name: 'Pentagonal Gem',
			price: 5.95,
			description: 'This is a Pentagonal Gem.',
			images: [{
				full: 'resources/images/pentagonal-01-full.png',
				thumb: 'resources/images/pentagonal-01-thumb.png'
			}],
			canPurchase: false,
			soldOut: false
		},
	
	];
	

})(); //EOF function wrapper
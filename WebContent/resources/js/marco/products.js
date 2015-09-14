/**
 * Angular.js javascript coding
 * @author marco
 */
(function(){
	var app = angular.module('store-products', []);
	
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

})(); //EOF function wrapper
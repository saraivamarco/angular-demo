/**
 * Angular.js javascript coding
 */
(function(){
	app.controller('PanelController', function(){
		this.tab = 1;
		
		this.selectTab = function(setTab){
			this.tab=setTab;
		};
	});
	
	
	
})(); //EOF function wrapper
<!DOCTYPE html>
<html>


	<style>
		table, th , td  {
		  border: 1px solid grey;
		  border-collapse: collapse;
		  padding: 5px;
		}
		table tr:nth-child(odd)	{
		  background-color: #f1f1f1;
		}
		table tr:nth-child(even) {
		  background-color: #ffffff;
		}
	</style>


	<script src= "http://ajax.googleapis.com/ajax/libs/angularjs/1.3.14/angular.min.js"></script>
	<script src="resources/js/myApp.js"></script>
	<script src="resources/js/namesController.js"></script>
	<script src="resources/js/personController.js"></script>
	<script src="resources/js/pricing.js"></script>
	<script src="resources/js/url.js"></script>
	<script src="resources/js/table.js"></script>
	<script src="resources/js/php_sql.js"></script>
	<script src="resources/js/.net_sql.js"></script>
	<script src="resources/js/hiddingelements.js"></script>
	<script src="resources/js/showingelements.js"></script>

	<body>

		<div id="application1" data-ng-controller="controller1">
			First Name: <input type="text" data-ng-model="firstName">
			<br>
			Last Name: <input type="text" data-ng-model="lastName">
			<br>
			<br>
			Full Name: {{firstName + " " + lastName}}
		</div>
		
		<div id="application2" data-ng-controller="controller2">
			First Name: <input type="text" data-ng-model="bla">
			<br>
			Last Name: <input type="text" data-ng-model="blabla">
			<br>
			<br>
			Full Name: {{bla + " " + blabla}}
		</div>

		<div id="application3" data-ng-controller="namesCtrl">
			<br>
			<h2>Foreach Example</h2>
			<ul>
  				<li data-ng-repeat="x in names">
    				{{ x.name + ', ' + x.country }}
  				</li>
			</ul>
			
			<br>
			<h2>Foreach Example with order by</h2>
			<ul>
				<li data-ng-repeat="x in names | orderBy:'country'">
			    	{{ x.name + ', ' + x.country }}
				</li>
			</ul>
			
			<br>
			<h2>Foreach Example with order by and filtering</h2>
			<p><input type="text" data-ng-model="test"></p>
			<ul>
				<li data-ng-repeat="x in names | filter:test | orderBy:'country'">
    				{{ (x.name | uppercase) + ', ' + x.country }}
				</li>
			</ul>
		</div>
		
		<div id="application4" data-ng-controller="personCtrl">
			<br>
			<h2>Filtering example - uppercase</h2>
			<p>The name is {{ lastName | uppercase }}</p>
		</div>

		<div id="pricingApp" data-ng-controller="costCtrl">
			<br>
			<h2>Filtering example - currency</h2>
			<input type="number" data-ng-model="quantity">
			<input type="number" data-ng-model="price">
			
			<p>Total = {{ (quantity * price) | currency }}</p>
		
		</div>
		
		
		<div id="urlApp" data-ng-controller="customersCtrl">
			<br>
			<h2>Filtering example - downloading data from url (json!)</h2>
			<ul>
		  		<li data-ng-repeat="x in names">
		    		{{ x.Name + ', ' + x.Country }}
		  		</li>
			</ul>
		</div>

		<div id="tableApp" data-ng-controller="customersCtrl"> 
			<br>
			<h2>Table example</h2>
			<table>
				<tr data-ng-repeat="x in names">
			    	<td>{{ x.Name }}</td>
			    	<td>{{ x.Country }}</td>
			  	</tr>
			</table>
			
			<br>
			<h2>Table example with order by</h2>
			<table>
  				<tr data-ng-repeat="x in names | orderBy : 'Country'">
				    <td>{{ x.Name }}</td>
				    <td>{{ x.Country }}</td>
				</tr>
			</table>
			
			<br>
			<h2>Table example with index</h2>
			<table>
  				<tr data-ng-repeat="x in names">
  					<td>{{ $index + 1 }}</td>
				    <td>{{ x.Name }}</td>
				    <td>{{ x.Country }}</td>
				</tr>
			</table>
			
			<br>
			<h2>Table example with $odd and $even</h2>
			<h2>Delete CSS on top of page</h2>
			<table>
				<tr data-ng-repeat="x in names">
				<td data-ng-if="$odd" style="background-color:#f1f1f1">{{ x.Name }}</td>
				<td data-ng-if="$even">{{ x.Name }}</td>
				<td data-ng-if="$odd" style="background-color:#f1f1f1">{{ x.Country }}</td>
				<td data-ng-if="$even">{{ x.Country }}</td>
				</tr>
			</table>
		</div>
		
		<div id="phpSql" data-ng-controller="customersCtrl">
			<br>
			<h2>Fetching Data From a PHP Server Running MySQL</h2>			
			<table>
			  <tr data-ng-repeat="x in names">
			    <td>{{ x.Name }}</td>
			    <td>{{ x.Country }}</td>
			  </tr>
			</table>
		</div>
		
		<div id=".netSql" data-ng-controller="customersCtrl">
			<br>
			<h2>Fetching Data From an ASP.NET Server Running SQL</h2>			
			<table>
			  <tr data-ng-repeat="x in names">
			    <td>{{ x.Name }}</td>
			    <td>{{ x.Country }}</td>
			  </tr>
			</table>
		</div>
		
		<div data-ng-app="" data-ng-init="mySwitch=true">
			<br>
			<h2>The ng-disabled Directive</h2>
			<p>
				<button data-ng-disabled="mySwitch">Click Me!</button>
			</p>
			
			<p>
				<input type="checkbox" data-ng-model="mySwitch">Button
			</p>
			
			<br>
			<h2>The ng-show Directive</h2>
			<p data-ng-show="true">I am visible.</p>

			<p data-ng-show="false">I am not visible.</p>
			
			<br>
			<p data-ng-show="hour > 12">I am visible.</p>
			
			<br>
			<h2>The ng-click Directive</h2>
			<button data-ng-click="count = count + 1">Click me!</button>
			<p>{{ count }}</p>
		</div>
		
		<div id="hiddingApp" data-ng-controller="personCtrl">
			<br>
			<h2>Hiding HTML Elements</h2>
			<button data-ng-click="toggle()">Toggle</button>
			
			<p data-ng-hide="myVar">
				First Name: <input type="text" data-ng-model="firstName"><br>
				Last Name: <input type="text" data-ng-model="lastName"><br>
			<br>
				Full Name: {{firstName + " " + lastName}}
			</p>
		</div>
		
		<div id="showingApp" data-ng-controller="personCtrl">
			<br>
			<h2>Showing HTML Elements</h2>
			<button data-ng-click="toggle()">Toggle</button>
			<p data-ng-show="myVar">
				First Name: <input type="text" data-ng-model="firstName"><br>
				Last Name: <input type="text" data-ng-model="lastName"><br>
			<br>
				Full Name: {{firstName + " " + lastName}}
			</p>
	</div>

		<!-- initializing applications using bootstrap -->
		<script type="text/javascript">
		/* element div + module name */
          	angular.bootstrap(document.getElementById('application1'), ['names1']);
        	angular.bootstrap(document.getElementById('application2'), ['names2']);
        	angular.bootstrap(document.getElementById('application3'), ['names']);
        	angular.bootstrap(document.getElementById('application4'), ['persons']);
        	angular.bootstrap(document.getElementById('pricingApp'),   ['pricing']);
        	angular.bootstrap(document.getElementById('urlApp'),   ['url']);
        	angular.bootstrap(document.getElementById('tableApp'),   ['table']);
        	angular.bootstrap(document.getElementById('phpSql'),   ['php']);
        	angular.bootstrap(document.getElementById('.netSql'),   ['.net']);
        	angular.bootstrap(document.getElementById('hiddingApp'),   ['hidding']);
        	angular.bootstrap(document.getElementById('showingApp'),   ['showing']);
  		</script>
	</body>
</html>
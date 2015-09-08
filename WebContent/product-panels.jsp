<!-- @author marco -->
<section >
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
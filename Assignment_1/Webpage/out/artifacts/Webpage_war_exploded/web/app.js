(function () {

  var app = angular.module('assignement1', []);

  var button1 = 0;

  app.controller('TabController', function(){
    this.tab = 1;

    this.setTab = function(newValue){
      this.tab = newValue;
    };

    this.isSet = function(tabName){
      return this.tab === tabName;
    };
  });



  //Directive that returns an element which adds buttons on click which show an alert on click
app.directive("addbuttonphysical", function(){

  return {
    restrict: "E",
    template: "<button ng-click=\"counter()\" ng-init=\"count=0\" addphysical type=\"button\" class=\"btn btn-default\" style=\"float: right; margin-bottom:10px; margin-right:100px;\">"
            +      "<span class=\"glyphicon glyphicon-plus\" aria-hidden=\"true\"></span>Add"
            +  "</button>"
  }
});

//Directive for adding buttons on click that show an alert on click
app.directive("addphysical", function($compile){
	return function(scope, element, attrs){
		element.bind("click", function(){
			scope.count++;
            if (scope.count <= 10) {
                angular.element(document.getElementById('space-for-physical')).append($compile("<div style=\"padding-top: 15px;\">"
                                        + "<input type=\"number\" class=\"form-control\" min=\"0\" max=\"10\" required>"
                                    +  "</div>")(scope));

                angular.element(document.getElementById('space-for-sugar')).append($compile("<div style=\"padding-top: 15px;\">"
                                        + "<input type=\"number\" class=\"form-control\" min=\"15\" max=\"100\" required>"
                                    +  "</div>")(scope));
              }
          });
	};
});


})();

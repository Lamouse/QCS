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
    template: "<button id=\"teste\" ng-click=\"counter()\" ng-init=\"count=2\" addphysical type=\"button\" class=\"btn btn-default\" style=\"float: right; margin-bottom:10px; margin-right:20px;\">"
            +      "<span class=\"glyphicon glyphicon-plus\" aria-hidden=\"true\"></span>Add"
            +  "</button>"
  }
});

//Directive for adding buttons on click that show an alert on click
app.directive("addphysical", function($compile){
	return function(scope, element, attrs){
		element.bind("click", function(){
            count++;
            //console.log(count);
            if (count <= 10) {
                angular.element(document.getElementById('space-for-physical')).append($compile("<div id=\"r1_"+count+"\"><label for=\"l1_"+count+"\" class=\"col-sm-1 control-label\">"+count+".</label>"
                                        + "<div class=\"col-sm-10\" style=\"padding-top: 15px;\"> <input type=\"number\" id=\"l1_"+count+"\" name=\"l1_"+count+"\" class=\"form-control\" ng-pattern=\"integerval\" ng-model=\"list1_"+count+"\"min=\"0\" max=\"10\" required>"
                                        +"<small class=\"error\" ng-show=\"form2.l1_"+count+".$invalid\">\nShould be an integer between 0 and 10.</small>"
                                    +  "</div></div>")(scope));

                angular.element(document.getElementById('space-for-sugar')).append($compile("<div id=\"r2_"+count+"\"><label for=\"l2_"+count+"\" class=\"col-sm-1 control-label\">"+count+".</label>"
                                        + "<div class=\"col-sm-10\" style=\"padding-top: 15px;\"> <input type=\"number\" id=\"l2_"+count+"\" name=\"l2_"+count+"\" class=\"form-control\" ng-pattern=\"integerval\" ng-model=\"list2_"+count+"\"min=\"15\" max=\"100\" required>"
                                        +"<small class=\"error\" ng-show=\"form2.l2_"+count+".$invalid\">Should be an integer between 15 and 100.</small>"
                                     +  "</div></div>")(scope));
              }
          });
	};
});

})();

<%--
  Created by IntelliJ IDEA.
  User: paulo
  Date: 11-05-2015
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="pt" ng-app="assignement1">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>QCS Assignmet 1</title>
    <link rel="shortcut icon" href="">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script type="text/javascript" src="angular.min.js"></script>
    <script type="text/javascript" src="app.js"></script>
    <style>body{padding-top:50px;}.starter-template{padding:40px 15px;text-align:center;}</style>

    <!--[if IE]>
    <script src="https://cdn.jsdelivr.net/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div class="container">
    <!--<ul class="nav nav-tabs">
<li role="presentation" class="active"><a href="#">Mealtime Insuline Dose - Standard Insulin Sensitivity</a></li>
<li role="presentation"><a href="#">Mealtime Insuline Dose - Personal Insulin Sensitivity</a></li>
<li role="presentation"><a href="#">Backgroug Insuline Dose</a></li>
</ul>-->
    <section ng-controller="TabController as tab">
        <ul class="nav nav-tabs">
            <li ng-class="{active: tab.isSet(1)}"><a href ng-click="tab.setTab(1)">Mealtime Insuline Dose - Standard Insulin Sensitivity</a></li>
            <li ng-class="{active: tab.isSet(2)}"><a href ng-click="tab.setTab(2)">Mealtime Insuline Dose - Personal Insulin Sensitivity</a></li>
            <li ng-class="{active: tab.isSet(3)}"><a href ng-click="tab.setTab(3)">Backgroug Insuline Dose</a></li>
        </ul>

        <div ng-show="tab.isSet(1)">
            <form name="form1" class="form-horizontal">
                <div class="form-group" style="margin-top:30px;">
                    <label for="input1_1" class="col-sm-6 control-label">Total grams of carbohydrates in the meal</label>
                    <div class="col-sm-4">
                        <input type="number" class="form-control" ng-model="f1_1" id="input1_1" min="60" max="120" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="input1_2" class="col-sm-6 control-label">Total grams of carbohydrates processed by 1 unit of rapid acting insulin</label>
                    <div class="col-sm-4">
                        <input type="number" class="form-control" ng-model="f1_2" id="input1_2" ng-init="f1_2=12" min="10" max="15" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="input1_3" class="col-sm-6 control-label">Actual blood sugar level measured before the meal</label>
                    <div class="col-sm-4">
                        <input type="number" class="form-control" ing-model="f1_3" id="input1_3" min="120" max="250" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="input1_4" class="col-sm-6 control-label">Target blood sugar before the meal</label>
                    <div class="col-sm-4">
                        <input type="number" class="form-control" ng-model="f1_4" id="input1_4" min="80" max="120" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="input1_5" class="col-sm-6 control-label">Individual sensitivity</label>
                    <div class="col-sm-4">
                        <input type="number" class="form-control" ng-model="f1_5" id="input1_5" ng-init="f1_5=50" min="15" max="100" required>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-8 col-sm-10">
                        <button type="submit" class="btn btn-default" ng-disabled="form1.$invalid">Calculate insulin dose</button>
                    </div>
                </div>
            </form>
        </div>
        <div ng-show="tab.isSet(2)">
            <form name="form2" class="form-horizontal">
                <div class="form-group" style="margin-top:30px;">
                    <label for="input2_1" class="col-sm-6 control-label">Total grams of carbohydrates in the meal</label>
                    <div class="col-sm-4">
                        <input type="number" class="form-control" id="input2_1" ng-model="f2_1" min="60" max="120" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="input2_2" class="col-sm-6 control-label">Total grams of carbohydrates processed by 1 unit of rapid acting insulin</label>
                    <div class="col-sm-4">
                        <input type="number" class="form-control" id="input2_2" ng-model="f2_2" ng-init="f2_2=12" min="10" max="15" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="input2_3" class="col-sm-6 control-label">Actual blood sugar level measured before the meal</label>
                    <div class="col-sm-4">
                        <input type="number" class="form-control" id="input2_3" ng-model="f2_3" min="120" max="250" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="input2_4" class="col-sm-6 control-label">Target blood sugar before the meal</label>
                    <div class="col-sm-4">
                        <input type="number" class="form-control" id="input2_4" ng-model="f2_4" min="80" max="120" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="input2_5" class="col-sm-6 control-label">Today’s physical activity level</label>
                    <div class="col-sm-4">
                        <input type="number" class="form-control" id="input2_5" ng-model="f2_5" min="0" max="10" required>
                    </div>
                </div>
                <div class="form-group panel panel-default col-sm-offset-2 col-sm-10">
                    <h4>Add Physical Activity and Blood Sugar Samples:</h4>
                    <div class="panel-body" style="padding-top: 30px;">
                        <div class="col-sm-offset-2 col-sm-4">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Physical Activity Level</h3>
                                </div>
                                <div class="panel-body" id="space-for-physical"></div>
                                <div class="text-right" style="padding-right:10px; padding-bottom:10px">
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Drops in Blood Sugar</h3>
                                </div>
                                <div class="panel-body" id="space-for-sugar"></div>
                                <div class="text-right" style="padding-right:10px; padding-bottom:10px">
                                </div>
                            </div>
                        </div>
                    </div>
                    <addbuttonphysical></addbuttonphysical>
                </div>


                <div class="form-group">
                    <div class="col-sm-offset-8 col-sm-10">
                        <button type="submit" class="btn btn-default" ng-disabled="form2.$invalid">Calculate insulin dose</button>
                    </div>
                </div>
            </form>
        </div>
        <div ng-show="tab.isSet(3)">
            <form name="form3" class="form-horizontal">
                <div class="form-group" style="margin-top:30px;">
                    <label for="input3_1" class="col-sm-2 control-label">Weight</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control" id="input3_1" ng-model="f3_1" required>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default" ng-disabled="form3.$invalid">Calculate insulin dose</button>
                    </div>
                </div>
            </form>
        </div>
    </section>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</body>
</html>


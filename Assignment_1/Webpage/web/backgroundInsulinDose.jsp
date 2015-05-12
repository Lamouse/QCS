<%--
  Created by IntelliJ IDEA.
  User: paulo
  Date: 11-05-2015
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <jsp:useBean id="back" class="diabetes.BackgroundInsulinDose" scope="application"/>
    <jsp:setProperty name="back" property="*"/>

    <title>Simple JSP Calculator (Results)</title>
</head>
<body>
<h2>The result of your request is:</h2>
<%= back.getInput3_1()%>
<%= back.getResult()%>

</body>
</html>

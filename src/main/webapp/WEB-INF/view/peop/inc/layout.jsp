<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
    <title><tiles:getAsString name="human"/></title>
    <meta charset="UTF-8">
</head>

<body>
    <!-- header 부분 -->
    <tiles:insertAttribute name="header"/>

	<tiles:insertAttribute name="aside"/>
    
    <!-- --------------------------- <body> --------------------------------------- -->
    <!-- content 부분 -->
<div align="center">
<tiles:insertAttribute name="body"/>
</div>
    <!-- ------------------- <footer> --------------------------------------- -->  
</body>
<tiles:insertAttribute name="footer"/>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
    <title><tiles:getAsString name="title"/></title>
    <meta charset="UTF-8">
</head>
<body>
    <!-- header 부분 -->
    
<tiles:insertAttribute name="header"/>
    <!-- --------------------------- <body> --------------------------------------- -->
    <!-- content 부분 -->

<tiles:insertAttribute name="body"/>

    <!-- ------------------- <footer> --------------------------------------- -->
    
<tiles:insertAttribute name="footer"/>
</body>
</html>
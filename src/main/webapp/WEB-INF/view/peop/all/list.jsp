<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div align="center">
가족,대인관계
</div>
<div align="center">
	<a href="add">추가하기</a>
</div>
<div align="center">
    가족
</div>
<table border="1">
    <thead>
        <tr>
        	<th>번 호</th>
        	<th>구 분</th>
            <th>이 름</th>
            <th>나 이</th>
            <th>직 업</th>
            <th>관 계</th>
            <th>특 징</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="list" items="${List}">
                <tr>
                	<td>${list.num}</td>
                	<td>${list.dv}</td>
                    <td>${list.name}</td>
                    <td>${list.age}</td>
                    <td>${list.job}</td>
                    <td>${list.relation}</td>
                    <td>${list.forme}</td>
                </tr>
        </c:forEach>
    </tbody>
</table>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<table border="1">
    <tr>
        <td>구분</td>
        <td>${People.dv}</td>
    </tr>
    <tr>
        <td>이름</td>
        <td>${People.name}</td>
    </tr>
    <tr>
        <td>나이</td>
        <td>${People.age}</td>
    </tr>
    <tr>
        <td>직업</td>
        <td>${People.job}</td>
    </tr>
    <tr>
        <td>관계</td>
        <td>${People.relation}</td>
    </tr>
    <tr>
        <td>특징</td>
        <td>${People.forme}</td>
    </tr>
 	<tr>
   	 	<td>특징2</td>
    	<td>${People.forme2}</td>
</tr>
</table>
<a href="update?num=${People.num}">수정</a>
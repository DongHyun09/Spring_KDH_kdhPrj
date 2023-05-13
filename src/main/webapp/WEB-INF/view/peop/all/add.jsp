<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div align="center">
    추가
</div>
<form action="add" method="post">
    <table>
<tr>
<td><input type="hidden" name="num" value="${NUM}" readonly>
</td></tr>
<tr>
<th>구분</th>
<td>
<select name="dv">
  <option value="F">가족</option>
  <option value="C">동료</option>
  <option value="R">친구</option>
  <option value="K">지인</option>
</select></td></tr>
 <tr>
<th>이름</th>
 <td><input type="text" name="name"></td></tr>
<tr>
<th>나이</th>
<td><input type="number" name="age"></td></tr>
<tr>
<th>직업</th>
<td><input type="text" name="job"></td></tr>
<tr>
<th>관계</th>
<td><input type="text" name="relation"></td>
</tr>
<tr>
<th>특징</th>
<td><input type="text" name="forme"></td>
</tr>
<tr>
<th>특징2</th>
<td><textarea name="forme2"></textarea></td>          
</tr>
</table>
    <button type="submit">삽입</button>
</form>
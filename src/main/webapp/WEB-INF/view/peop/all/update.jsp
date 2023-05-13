<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form action="update" method="post">
<table border="1">
 <tr>
        <td>구분</td>
        <td><input type="text" id="dv" name="dv" value="${People.dv}" /></td>
    </tr>
    <tr>
        <td>이름</td>
        <td><input type="text" id="name" name="name" value="${People.name}" /></td>
    </tr>
    <tr>
        <td>나이</td>
        <td><input type="text" id="age" name="age" value="${People.age}" /></td>
    </tr>
    <tr>
        <td>직업</td>
        <td> <input type="text" id="job" name="job" value="${People.job}" /></td>
    </tr>
    <tr>
        <td>관계</td>
        <td><input type="text" id="relation" name="relation" value="${People.relation}" /></td>
    </tr>
    <tr>
        <td>특징</td>
        <td><input type="text" id="forme" name="forme" value="${People.forme}" /></td>
    </tr>
 	<tr>
   	 	<td>특징2</td>
    	<td><textarea id="forme2" name="forme2">${People.forme2}</textarea></td>
</tr>
</table>
    <input type="submit" value="저장" />
</form>
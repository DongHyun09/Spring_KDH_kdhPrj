<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div align="center">
    추가
</div>
<form action="add" method="post">
    <table>
        <thead>
            <tr>
                <th>이름</th>
                <th>나이</th>
                <th>직업</th>
                <th>관계</th>
                <th>특징</th>
                <th>나에게 있어서</th>
                <th>구분</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><input type="text" name="name"></td>
                <td><input type="number" name="age"></td>
                <td><input type="text" name="job"></td>
                <td><input type="text" name="relation"></td>
                <td><input type="text" name="forme"></td>
                <td><textarea name="forme2"></textarea></td>
                <td>
                    <select name="dv">
                        <option value="F">가족</option>
                        <option value="C">동료</option>
                        <option value="R">친구</option>
                        <option value="K">지인</option>
                    </select>
                </td>
            </tr>
        </tbody>
    </table>
    <button type="submit">삽입</button>
</form>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL SQL Tag</title>
</head>
<body>

<h2>JSTL SQL Tag: setDataSource, query, param</h2>

<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<sql:setDataSource var="stuDS" dataSource="jdbc/mysql"  />


<hr><h2>전체 학생 조회</h2>


<%-- 
<sql:query var="studentsRS" dataSource="${stuDS}">
  select * from student
</sql:query>

--%>

<sql:query var="studentsRS" dataSource="${stuDS}" sql="select * from student" />


<h2>11111</h2>
<c:forEach var="studentRow" begin="0" items="${studentsRS.rows}"> 
1--->${studentRow.id}, ${studentRow.passwd}, ${studentRow.name}, ${studentRow.depart} <br> 
</c:forEach> 





<hr><h2>컴퓨터공학과 학생 조회</h2>
<sql:query var="comRS" dataSource="${stuDS}" >
	select * from student where depart = ?
	<sql:param value="컴퓨터공학과" />
</sql:query>



<hr><h2>컴퓨터공학과 학생 조회2</h2>

<c:forEach var="studentRow" begin="0" items="${comRS.rows}"> 
${studentRow.id}, ${studentRow.passwd}, ${studentRow.name}, ${studentRow.depart} <br> 
</c:forEach> 


<hr>


<hr><h2>컴퓨터공학과 학생 조회3</h2>
<c:forEach var="studentRow" begin="0" items="${comRS.rowsByIndex}"> 
	${studentRow[0]}, ${studentRow[1]}, ${studentRow[2]}, ${studentRow[5]}, ${studentRow[6]}-${studentRow[7]} <br> 
</c:forEach> 



<hr><h2>컴퓨터공학과 학생 조회4</h2>

<table border="1">
<tr bgcolor="00ced1">
	<th>aa</th><th>ㅇㅇ</th><th>ㄹㄹ</th><th>ㅅㅅ</th><th>ㅎㅎ </th>
</tr> 
<c:forEach var="studentRow" begin="0" items="${comRS.rowsByIndex}"> 
	<tr>
	<td>${studentRow[0]}</td><td> ${studentRow[1]}</td><td> ${studentRow[2]}</td><td> ${studentRow[5]}</td><td> ${studentRow[6]}-${studentRow[7]} </td>
	</tr> 
</c:forEach> 
</table>



</body>
</html>
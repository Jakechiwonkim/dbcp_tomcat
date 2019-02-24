<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL Core: import</title>
</head>
<body>

<h2>JSTL Core Tag: import</h2>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:import url="if.jsp" />

<c:import url="choose.jsp" var="choose" />
${choose}


<hr>



<c:import url="paramhandle.jsp" >
	<c:param name="user" value="kang" />
	<c:param name="job" value="professor" />
</c:import>

<p><hr><p>




<hr>



<c:import url="https://docs.oracle.com/cd/E17802_01/products/products/jsp/jstl/1.1/docs/tlddocs/c/import.html" var="java" />
<c:import url="http://www.tayloredmktg.com/rgb/" var="rgb" />

<style>
table, th, td {
  border: 1px solid black;
}
</style>

table
<!-- 스크롤  -->
<div id="listIterDiv" style="overflow:auto;height:400px;">
<!-- 데이터  -->
<table>
<tr>
	<td width=50% align=center bgcolor='9370db'>import</td>
	<td width=50% align=center bgcolor=20b2aa>rgb</td>
</tr>
<tr>
	<td valign="top">${java} </td>
	<td valign="top">${rgb}</td>
</tr>
</table>
<!--  -->
</div>


<p><hr><p>



</body>
</html>
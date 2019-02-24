<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL Core: forEach</title>
</head>
<body>
<%
request.setCharacterEncoding("EUC-KR");

%>
<h2>JSTL Core Tag: forEach</h2>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h3>�迭 ó��</h3>
<c:set var="score" value="<%= new int[] {95, 88, 77, 45, 99} %>" />
<c:forEach var="point" items="${score}" >
	\${point} = ${point} <br>
	<c:set var="sum" value="${sum + point}" />
</c:forEach>
�� = ${sum} <br>

<h3>1���� 100���� ��</h3>
<c:set var="sum" value="0" />
<c:forEach var="i" begin="1" end="100" >
	<c:set var="sum" value="${sum + i}" />
</c:forEach>
��� = ${sum}

<h3>1���� 100���� 3�� ��� ��</h3>
<c:set var="sum" value="0" />
<c:forEach var="i" begin="3" end="100" step="3">
	<c:set var="sum" value="${sum + i}" />
</c:forEach>
��� = ${sum}


<h3>Map ó��</h3>
<c:set var="hm" value="<%= new java.util.HashMap() %>" />
<c:set target="${hm}" property="name" value="ȫ�浿" />
<c:set target="${hm}" property="id" value="dong" />
<c:set target="${hm}" property="passwd" value="1234" />
<c:forEach var="i" items="${hm}" >
    ${i.key} = ${i.value}<br>
</c:forEach>

<%-- 
<h3>Map�� sessionScope ó��</h3>
<c:set target="${sessionScope}" property="name" value="ȫ�浿" />
<c:set target="${sessionScope}" property="id" value="dong" />
<c:set target="${sessionScope}" property="passwd" value="1234" />
<c:forEach var="i" items="${sessionScope}" >
    ${i.key} = ${i.value}<br>
</c:forEach>
 --%>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL Core: if</title>
</head>
<body>

<h2>JSTL Core Tag: if</h2>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

�ȳ��ϼ���.
<c:set var="today" value="<%= new java.util.Date()%>" />
<br>

debug:hour=${today.hours }

<br>
<c:if test="${today.hours > 17 }" var="bool1">
���� �Ļ�� �ϼ̴�����?<br>
</c:if>
<p>
\${bool1} = ${bool1} 
<p>

<c:if test="${today.hours >= 23 }" var="bool2">
����� ��¥ �Ծ���??<br>
</c:if>
<p>

<hr>
\${today.hours+4} = ${today.hours+4} <br>
\${bool2} = ${bool2} 

</body>
</html>
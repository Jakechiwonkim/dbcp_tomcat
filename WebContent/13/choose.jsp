<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL Core: choose</title>
</head>
<body>

<h2>JSTL Core Tag: choose</h2>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="today" value="<%= new java.util.Date()%>" />

\${today.hours}=${today.hours}
<hr>


<c:choose> 
  <c:when test="${today.hours < 2 }" >
	ȣ����1
  </c:when> 
  <c:when test="${today.hours < 4 }" >
	ȣ����2
  </c:when> 
  <c:when test="${today.hours < 6 }" >
	����
  </c:when>   
  
  <c:when test="${today.hours < 12 }" >
	����
  </c:when> 
  <c:when test="${today.hours < 18 }" > 
	Good afternoon!
  </c:when> 
  <c:otherwise> 
	Good evening!
  </c:otherwise> 
</c:choose> 

<hr>
<c:set var="count" value="3" />
<c:choose> 
  <c:when test="${count <= 0 }" > 
	��ġ�ϴ� ���� �ϳ��� �����ϴ�.
  </c:when> 
  <c:otherwise> 
	��ġ�ϴ� ���� ${count}�� �ֽ��ϴ�.
  </c:otherwise> 
</c:choose> 

</body>
</html>
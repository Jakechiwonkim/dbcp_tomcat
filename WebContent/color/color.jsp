<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>색상</title>
</head>
<body>

c:url<br>
<c:url value="http://www.tayloredmktg.com/rgb/" var="rgb" />

<a href=${rgb}>${rgb}</a>


<hr>
c:import<br>
<c:import url="http://www.tayloredmktg.com/rgb/" var="rgb" />

${rgb}


</body>
</html>
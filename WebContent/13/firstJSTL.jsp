<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL ù ����</title>
</head>
<body>

	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<c:out value="Hello JSTL!!!!" /><br>
	<c:out value="Hello, world!" ></c:out><br>
<br>
<hr>
	<button onclick="goHome()">������</button>


<!-- [��ó] iframe��� div�� ��ũ�ѹ� �����|�ۼ��� TK -->
<div id="listIterDiv" style="overflow:auto;height:400px;">
	<iframe src="https://docs.oracle.com/javaee/5/jstl/1.1/docs/tlddocs/" style="height:100%;width:100%;"></iframe>
</div> 

<br>



<br>
<!-- 
<iframe src="https://docs.oracle.com/javaee/5/jstl/1.1/docs/tlddocs/" style="height:100%;width:100%;"></iframe>
 -->

<script type="text/javascript">
function goHome(){
	window.location.href = "firstJSTL.jsp";
}

</script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ǥ������ �׼��±� �̿�</title>
</head>
<body>

<h2> ǥ������ �׼��±� �̿� </h2>

<jsp:useBean id="color" class="java.util.ArrayList">
</jsp:useBean>
<%
	color.add("red");
	color.add("orange");
	color.add("green");
	color.add("blue");
	color.add("violet");
%>

<h3>html</h3>
<ul>
	<font color="${color[0]}"> <li> �� ������ ${color[0]}���Դϴ�. </li> </font>	
	<font color="${color[1]}"> <li> �� ������ ${color[1]}���Դϴ�. </li> </font>	
	<font color="${color[2]}"> <li> �� ������ ${color[2]}���Դϴ�. </li> </font>	
	<font color="${color[3]}"> <li> �� ������ ${color[3]}���Դϴ�. </li> </font>	
	<font color="${color[4]}"> <li> �� ������ ${color[4]}���Դϴ�. </li> </font>	
</ul>

<h3>html5 + css3</h3>
<ul>
	<li style="color:${color[0]}">�� ������ ${color[0]}���Դϴ�.</li>
	<li style="color:${color[1]}">�� ������ ${color[1]}���Դϴ�.</li>
	<li style="color:${color[2]}">�� ������ ${color[2]}���Դϴ�.</li>
	<li style="color:${color[3]}">�� ������ ${color[3]}���Դϴ�.</li>
	<li style="color:${color[4]}">�� ������ ${color[4]}���Դϴ�.</li>
</ul>

<jsp:useBean id="sonsOfBitches" class="java.util.ArrayList"></jsp:useBean>
<%
sonsOfBitches.add("������");
sonsOfBitches.add("������");
sonsOfBitches.add("�翵��");

%>

<label>${sonsOfBitches.size() }</label>

<ul>
	<li style="color:${color[0]}">�� �ڽ��� ${sonsOfBitches[0]} �Դϴ�.</li>
	<li style="color:${color[1]}">�� �ڽ��� ${sonsOfBitches[1]} �Դϴ�.</li>
	<li style="color:${color[2]}">�� �ڽ��� ${sonsOfBitches[2]} �Դϴ�.</li>
</ul>


</body>
</html>
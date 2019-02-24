<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>표현언어에서 액션태그 이용</title>
</head>
<body>

<h2> 표현언어에서 액션태그 이용 </h2>

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
	<font color="${color[0]}"> <li> 이 색상은 ${color[0]}색입니다. </li> </font>	
	<font color="${color[1]}"> <li> 이 색상은 ${color[1]}색입니다. </li> </font>	
	<font color="${color[2]}"> <li> 이 색상은 ${color[2]}색입니다. </li> </font>	
	<font color="${color[3]}"> <li> 이 색상은 ${color[3]}색입니다. </li> </font>	
	<font color="${color[4]}"> <li> 이 색상은 ${color[4]}색입니다. </li> </font>	
</ul>

<h3>html5 + css3</h3>
<ul>
	<li style="color:${color[0]}">이 색상은 ${color[0]}색입니다.</li>
	<li style="color:${color[1]}">이 색상은 ${color[1]}색입니다.</li>
	<li style="color:${color[2]}">이 색상은 ${color[2]}색입니다.</li>
	<li style="color:${color[3]}">이 색상은 ${color[3]}색입니다.</li>
	<li style="color:${color[4]}">이 색상은 ${color[4]}색입니다.</li>
</ul>

<jsp:useBean id="sonsOfBitches" class="java.util.ArrayList"></jsp:useBean>
<%
sonsOfBitches.add("서정일");
sonsOfBitches.add("최익준");
sonsOfBitches.add("양영복");

%>

<label>${sonsOfBitches.size() }</label>

<ul>
	<li style="color:${color[0]}">이 자식은 ${sonsOfBitches[0]} 입니다.</li>
	<li style="color:${color[1]}">이 자식은 ${sonsOfBitches[1]} 입니다.</li>
	<li style="color:${color[2]}">이 자식은 ${sonsOfBitches[2]} 입니다.</li>
</ul>


</body>
</html>
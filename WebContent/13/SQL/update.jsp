<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSTL SQL Tag</title>
</head>
<body>

<h2>JSTL SQL Tag: update, dateParam</h2>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>





<hr><h2>��ü �Խ��� ��ȸ</h2>

<sql:setDataSource var="ds" dataSource="jdbc/mysql"  />


<hr><h3>�̸� "������"�� ���ڵ� ���</h3>

<sql:transaction dataSource = "${ds}">
<sql:update var="ins">
	insert into board(name,passwd,title,email,regdate,content)
	values (?,?,?,?,?,?);
	<sql:param>������</sql:param>
	<sql:param>123</sql:param>
	<sql:param>�Խ����� ����</sql:param>
	<sql:param>jhbark@naver.com</sql:param>
	<sql:dateParam type="timestamp" value="<%= new java.util.Date() %>"></sql:dateParam>
	<sql:param>�������� �� ��</sql:param>
</sql:update>
</sql:transaction>


<sql:query var="rs" dataSource="${ds}" sql="select * from board" />

<hr><h3>��ȸ1</h3>

<c:forEach var="brdRow" begin="0" items="${rs.rows}"> 
${brdRow.id}, ${brdRow.name}, ${brdRow.title}, ${brdRow.regdate} <br> 
</c:forEach> 


<hr><h3>��ȸ2</h3>

<c:forEach var="brdRow" begin="0" items="${rs.rowsByIndex}"> 
${brdRow[0]}, ${brdRow[1]}, ${brdRow[2]}, ${brdRow[3]}, ${brdRow[4]}, ${brdRow[5]}, ${brdRow[6]} <br> 
</c:forEach> 



<hr><h3>�̸� "������"�� ���ڵ忡�� �̸��� "�ſ���"����, ����� ����ð����� ���� ��,</h3>

<sql:update var="n" dataSource="${ds}">
   update board set name = ?, regdate = ? where name = ?
  <sql:param value="�ſ���" />
  <sql:dateParam value="<%= new java.util.Date() %>" type="timestamp" />
  <sql:param value="������" />
</sql:update>




<hr><h2> �ٽ� �Խ��� ��ü ��ȸ</h2>
<sql:query var="rs" dataSource="${ds}" sql="select * from board" />
<c:forEach var="brdRow" begin="0" items="${rs.rows}"> 
${brdRow.id}, ${brdRow.name}, ${brdRow.title}, ${brdRow.email}, ${brdRow.regdate} <br> 
</c:forEach> 

</body>
</html>
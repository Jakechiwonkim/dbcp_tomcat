<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ǥ������ �׼��±� �̿�</title>
</head>
<body>
<h2> ǥ������ �ڹٺ��� getter ȣ�� </h2>

<jsp:useBean id="user" class="member.User">
	<jsp:setProperty name="user" property="uname" value="�����"/>
	<jsp:setProperty name="user" property="uid" value="road"/>
	<jsp:setProperty name="user" property="unum" value="1234"/>
	<jsp:setProperty name="user" property="sex" />
</jsp:useBean>

\${ user.uname } = ${ user.uname } <br>
\${ user.uid } = ${ user.uid } <br>
\${ user.unum } = ${ user.unum }<br>
\${ user.sex } = ${ user.sex }<br>
<p>
\${ user["uname"] } = ${ user["uname"] } <br>
\${ user['uid'] } = ${ user['uid'] } <br>
\${ user['unum'] } = ${ user['unum'] }<br>
\${ user['sex'] } = ${ user['sex'] }<br>
</body>
</html>
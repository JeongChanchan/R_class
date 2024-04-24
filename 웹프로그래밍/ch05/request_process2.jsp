<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.*,java.util.*"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Implicit Objects</title>
</head>
<body>	
	<%
		request.setCharacterEncoding("utf-8");
		String userid = request.getParameter("id");
		String password = request.getParameter("passwd");
		String name = request.getParameter("name");
		String num = request.getParameter("num");
	%>
	<p>아이디 : <%=userid%>
	<p>비밀번호 : <%=password%>		
	<p>이름 : <%=name%>
	<p>학번 : <%=num%>
<p>------------------------------------------------------------------------------
<br>
 <%
			Enumeration paramNames = request.getParameterNames();
			while (paramNames.hasMoreElements()) {
				String name2 = (String) paramNames.nextElement();
				out.print(name2+" = ");
				String paramValue = request.getParameter(name2);
				out.println(paramValue);
				if (paramNames.hasMoreElements() != false)
					out.println(",");
			}
%>

	<div class="container">
		<div class="text-center">
			<hr>
				<a href="welcome.jsp"><button type="button" class="btn btn-outline-primary">홈 돌아가기</button></a>
			<hr>
		</div>
	</div>
<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
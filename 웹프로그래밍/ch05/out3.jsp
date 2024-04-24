<%@ page contentType="text/html; charset=utf-8" buffer="5kb"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
</head>
<body>
<%
	int totalBuffer = out.getBufferSize();
	int remainBuffer = out.getRemaining();
	int useBuffer = totalBuffer - remainBuffer;
%>
<h1>Out 내장 객체</h1>
<p><strong>현재 페이지의 Buffer 상태</strong></p>
<ul class="list-unstyled">
	<ul>
		<li>출력 Buffer의 전체 크기 : <%=totalBuffer%>byte</li>
		<li>남은 Buffer의 크기 : <%=remainBuffer%>byte</li>
		<li>현재 Buffer의 사용량 : <%=useBuffer%>byte</li>
	</ul>
</ul>

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
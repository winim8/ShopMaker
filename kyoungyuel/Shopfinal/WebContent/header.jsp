<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<!-- <meta charset="UTF-8"> -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" type="text/css" href="css/mobile.css">
<script src="js/mobile.js" type="text/javascript"></script>
</head>
<body>


				

	<%
		Object id;
		String uId;
		if (session.getAttribute("uId") == null) // 로그인이 안되었을 때
		{
			// 로그인 헤더
	%>
	
	
	
	<div id="page">
		<div id="header2">
			<div>
				<ul id="login" class="login">
					<li class="login"><a href="login.jsp">로그인 </a>|
					<a	href="join.jsp" >회원가입</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	
	
	<%
		} else // 로그인 했을 경우
		{
			id = session.getValue("uId");
			uId = id.toString();
	%>
	<div id="page">
		<div id="header2">
			<div>
				<ul id="login" class="login">
					<li class="logout">
			
						
						
						
						
						
			<a href = "update.jsp" style = "text-decoration: none;"> <%=uId%> 님 페이지 &nbsp;&nbsp;</a>|
					 <a href="logoutAction.jsp" style = "text-decoration: none;">&nbsp; LogOut</a> <%
 	}
 %>

						<hr>
					</li>
				</ul>
			</div>
		</div>
	</div>

</body>
</html>
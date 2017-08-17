<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="data.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Review</title>
</head>
<body>
	<%
		if (session.getAttribute("uId") != null) {
			String uId = (String) session.getAttribute("uId");
		}
	%>
	<div>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성시간</th>
					<th>평점</th>
				</tr>
			</thead>
			<tbody>
				<%
					String pNum2 = request.getParameter("pNum");
					DAO dao2 = new DAO();
					ArrayList<REVO> list = dao2.getReList();
					for (int i = 0; i < list.size(); i++) {
				%>
				<tr>
					<td><%=list.get(i).getreNum()%></td>
					<td><%=list.get(i).getreContents()%></td>
					<td><%=list.get(i).getreId()%></td>
					<td><%=list.get(i).getreDate()%></td>
					<td><%=list.get(i).getrePoint()%></td>
					
				</tr>
				<%
					}
					System.out.println("reView pNum2 : " + pNum2);
				
				%>
			</tbody>
		</table>
	</div>
	<div>
		<form method="post" action="reWriteAct.jsp">
			<input type="text" class="form-control" placeholder="한 줄 리뷰" name="reContents" maxlength="128"> 
				<input type="text" class="form-control" placeholder="평점" name="rePoint" 	maxlength="1"> 
				<input type="submit" class="btn btn-primary" value="확인">
		</form>
	</div>
</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="data.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Review</title>
</head>
<body>
	<%-- <%
		if (session.getAttribute("uId") != null) {
			String uId = (String) session.getAttribute("uId");
		}
	%> --%>
	<div>
		<table border=1 width="500px" cellspacing=0>
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성시간</th>
					<th>평점</th>
				</tr>
			</thead>
			<tbody>
				<%
					String pNum2 = request.getParameter("pNum");
					DAO dao2 = new DAO();
					ArrayList<REVO> list = dao2.getReList();
					for (int i = 0; i < list.size(); i++) {
				%>
				<tr>
					<td><%=list.get(i).getreNum()%></td>
					<td><%=list.get(i).getreContents()%></td>
					<td><%=list.get(i).getreId()%></td>
					<td><%=list.get(i).getreDate()%></td>
					<td><%=list.get(i).getrePoint()%></td>

				</tr>
				<%
					}
					System.out.println("reView pNum : " + pNum2);
				%>
			</tbody>
		</table>
	</div>
	<div>
		<form method="post" action="reWriteAct.jsp?pNum=<%=pNum2%>">
			<input type="text" class="form-control" placeholder="한 줄 리뷰"
				name="reContents" maxlength="128"> <input type="text"
				class="form-control" placeholder="평점" name="rePoint" maxlength="1">
			<input type="submit" class="btn btn-primary" value="확인">
		</form>
	</div>
</body>
</html>
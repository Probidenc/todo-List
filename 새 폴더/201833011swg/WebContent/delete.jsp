<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="java.sql.*" %>
<%
	Statement stmt = null;
	ResultSet rs = null;
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/todos?characterEncoding=utf8&serverTimezone=UTC", "root", "cs1234");
//	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/todos", "root", "cs1234");
	String item = request.getParameter("todo-item");
	String sql = "delete from todo";  
	stmt = conn.createStatement();
	stmt.executeUpdate(sql);

	sql = "alter table todo auto_increment = 1";  
	stmt.executeUpdate(sql);

	
	response.sendRedirect("todo.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	insert <%= item %>!!
</body>
</html>
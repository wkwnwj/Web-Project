<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*, java.io.*, javax.naming.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
 String no = request.getParameter("no");
 // request가 web에서 받은 정보를 jsp에 no라는 변수에 저장
 String name = request.getParameter("name");
 
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","201800001","201800001");
 //위 2개 오라클데이터베이스 연결
 
 PreparedStatement sql = conn.prepareStatement("insert into student values(?,?)");
 sql.setString(1,no);
 sql.setString(2,name);
 sql.executeUpdate();
 response.sendRedirect("read.jsp");
%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
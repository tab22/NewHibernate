<%@page import="com.cdac.dao.EmpDaoImpl"%>
<%@page import="com.cdac.dao.EmpDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <%
         int empno=Integer.parseInt(request.getParameter("id"));
         EmpDao empDao= new EmpDaoImpl();
         empDao.delete(empno);
         
         
    %>
    <h2>Record Deleted</h2>
</body>
</html>
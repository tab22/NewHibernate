<%@page import="java.util.List"%>
<%@page import="com.cdac.dao.EmpDaoImpl"%>
<%@page import="com.cdac.dao.EmpDao"%>
<%@page import="com.cdac.entity.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1">
  <%
    EmpDao empDao= new EmpDaoImpl();
        List<Employee>eList = empDao.showAll();
        for(Employee e:eList){
  %>
         <tr>
         <td><%=e.getId() %></td>
         <td><%=e.getFirstName() %></td>
         <td><%=e.getLastName() %></td> 
  
  <%} %>
  </table>
</body>
</html>
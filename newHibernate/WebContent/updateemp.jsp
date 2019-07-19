<%@page import="com.cdac.entity.Employee"%>
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
   int id=Integer.parseInt(request.getParameter("id"));
   EmpDao empDao= new EmpDaoImpl();
   Employee e=empDao.getEmployee(id);
   //out.println(e);                  
   String b_name=request.getParameter("update");
   if(b_name==null && e!=null )
   {
%>
  <form method="post" action="updateemp.jsp">
      <input type="hidden" name="id" value=<%=e.getId() %>><br>
     First Name: <input type="text" name="firstName" value="<%=e.getFirstName() %>"><br>
     Last Name: <input type="text" name="lastName" value="<%=e.getLastName() %>"><br>
      <input type="submit" value="update" name="update">
  </form>
<%}
   else
   { %>
   
   <jsp:useBean id="e1" class="com.cdac.entity.Employee"/>
   <jsp:setProperty property="*"  name="e1"/>
    
   
   
   
   
<%

EmpDao empDao1= new EmpDaoImpl();
empDao1.update(e1);
%>
<jsp:getProperty property="id" name="e1"/>
   <jsp:getProperty property="firstName" name="e1"/>
   <jsp:getProperty property="lastName" name="e1"/>

   
<%  } %>
   </body>
</html>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <%--  <%= response.sendRedirect("http://www.google.com/") %> --%>
  
<%--   <% 
  
   String indexName=(String)session.getAttribute("userId"); 
  %>
  
  
  <%= "Welcome Mr./ Ms. "+indexName %>
  
  
   --%>
  
  
 <%@ page errorPage="error.jsp" %>
  
  
  <% 
  

    String number1=request.getParameter("num1");
  String number2=request.getParameter("num2");
  
  int a=Integer.parseInt(number1);
  int b=Integer.parseInt(number2);
  
  int res=a/b;
  
  
  out.print("Div of Two is : "+res);
  
  
  %>
 
  
  
  
</body>
</html>



<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="index.jsp"  >
<input type="text" name="uname"> <br>
<button type="submit"> Go </button>
</form>



<form action="welcome.jsp"  > Num1
<input type="number" name="num1"> <br>
Num2
<input type="number" name="num2"> <br>

<button type="submit"> Go </button>
</form>



<!-- JSP Directive -->

<!-- 1. import attribute in Page Directive   -->


<%@ page import="java.util.Date" %>


<%= "Today date is "+new Date().getDate() %>

 <br>


<!-- Scriptet Tag (To write Java Code in JSP file also declaring variable not methods)-->
<%

String name=request.getParameter("uname"); 
  out.print(name);   
%>

<br>
<!-- Expression Tag (to generate or print output of the java code) -->

<%= "Welcome "+ request.getParameter("uname") %>

<br>

<%= Calendar.getInstance().getTime() %>

<br>
<!-- Declaration Tag (to declare the variable as well as methods of java code) -->


<%! int data=50; %>

<%= "Data is "+data %>
<br>



<!-- Calculate Squre  -->


<%! public int squre(int n){

    return n*n;
}
%>


<%= "Squre is : "+squre(5) %>

<!-- ---------------------------------------------------------  -->

<!-- JSP implicit  Objects  -->


  <!-- 1. out  -->

<% out.print("Today is:"+java.util.Calendar.getInstance().getTime()); %>  


  <!-- 2. request  -->

<%= "Welcome "+ request.getParameter("uname") %>


  <!-- 3. response  -->

   <!-- code will be response into welcome.jsp file -->


<!-- 4. session  -->
  
  
  <% session.setAttribute("userId",name); %>
  
  <a href="welcome.jsp">Move to Welcome File</a>

</body>
</html>


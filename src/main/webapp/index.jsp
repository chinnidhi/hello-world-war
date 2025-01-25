<html>
<body>
<h1>Hello</h1>
<h2>Hi This is Nidhi</h2>
<h2>Hi This is Nidhi</h2>
<%!
   long n = 10, result;
   long fact(long n) {
      if(n==0)        
         return 1;   
      else
         return n*fact(n-1);
   }
%>
<%    
    result = fact(n);
%>
<b>Factorial value: </b> <%= result %>
<%
    String userInput = request.getParameter("userInput");
    // SQL Injection vulnerability: no sanitization of user input
    String query = "SELECT * FROM users WHERE name='" + userInput + "'";
    out.println(query);
%>
<%@ page import="java.util.*" %>
<%
    String userInput = request.getParameter("userInput");
    // SQL Injection vulnerability: no sanitization of user input
    String query = "SELECT * FROM users WHERE name='" + userInput + "'";
    out.println(query);
%>
<%
    String userInput = request.getParameter("userInput");
    // SQL Injection vulnerability: no sanitization of user input
    String query = "SELECT * FROM users WHERE name='" + userInput + "'";
    out.println(query);
%>
</body>
</html>

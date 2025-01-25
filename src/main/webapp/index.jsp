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
<%@ page import="java.util.*" %>
<%
    String userInput = request.getParameter("userInput");
    // XSS vulnerability: no escaping or encoding of user input
    out.println("User input: " + userInput);
%>
<%@ page import="org.apache.commons.lang.StringEscapeUtils" %>
<%
    String userInput = request.getParameter("userInput");
    out.println("User input: " + StringEscapeUtils.escapeXml(userInput));
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
    String dbPassword = "admin123";  // Hardcoded password
    String dbUser = "admin";         // Hardcoded username
    // Some database connection code...
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
    String target = request.getParameter("target");
    // Unvalidated redirect vulnerability: unfiltered user input
    response.sendRedirect(target);
%>
<%@ page import="java.util.*" %>
<%
    try {
        // Some risky operation
        String result = riskyOperation();
    } catch (Exception e) {
        out.println("Error occurred: " + e.getMessage());  // Sensitive error message
    }
%>
<%@ page import="java.security.MessageDigest" %>
<%
    String password = request.getParameter("password");
    MessageDigest md = MessageDigest.getInstance("MD5");  // Weak hashing algorithm
    byte[] hashedPassword = md.digest(password.getBytes());
    out.println("Hashed password: " + new String(hashedPassword));
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
    String fileName = request.getParameter("file");
    File file = new File("uploads/" + fileName);  // Lack of input validation
    file.createNewFile();
%>
<%@ page import="java.util.*" %>
<%
    String userInput = request.getParameter("userInput");
    // Command Injection vulnerability: no sanitization
    String command = "ls " + userInput;  // Potential for command injection
    Runtime.getRuntime().exec(command);
%>
</body>
</html>

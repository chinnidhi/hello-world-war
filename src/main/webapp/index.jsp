<html>
<body>
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
</body>
</html>

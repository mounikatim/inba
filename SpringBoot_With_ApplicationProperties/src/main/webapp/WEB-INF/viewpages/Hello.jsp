<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function valid(){
	/*  if (document.getElementById("bookId").value==""){  
	      document.getElementById("error1").innerHTML="<center>Username required</center>";  
	      return false;  
	    } */ 
	      if(document.getElementById("name").value==""){
	    	document.getElementById("error1").innerHTML="<center>Enter Your Name</center>";
	    	return false;
	     }
	    
	     else if(document.getElementById("city").value==""){
	    	 document.getElementById("error2").innerHTML="<center>Enter Your City</center>";
	    	 document.getElementById("error1").innerHTML="";
	    	 return false;
	     } 
	     else if(document.getElementById("ph").value==""){
	    	 document.getElementById("error3").innerHTML="<center>Enter Your PhoneNo</center>";
	    	 document.getElementById("error2").innerHTML="";
	    	 return false;
	     }
	     /* else if(document.getElementById("bookPrice").value==""){
	    	 document.getElementById("error5").innerHTML="<center>Enter price</center>";
	    	 document.getElementById("error4").innerHTML="";
	    	 return false;
	     }
	     else if(document.getElementById("bookImage").value==""){
	    	 document.getElementById("error6").innerHTML="<center>Enter Image</center>";
	    	 document.getElementById("error5").innerHTML="";
	    	 return false;
	     } */
	     else {
	    	 return true;
	     } 
	
}
</script>
<link href="/Css/design.css" rel="stylesheet" type="text/css">
</head>
<body>
<p id="error5"></p>
<h1>Hello ASWIN....</h1>
<form:form action="save" modelAttribute="login">
<table class="table">
<tr>
<td>Enter your UserName<td><form:input path="name"/><br><td><p id="error1"></p></td></tr>
<tr><td>Enter your City<td><form:input path="city"/><br><p id="error2"></p></td></tr>
<tr><td>Enter your PhoneNo<td><form:input path="ph"/><br><td><p id="error3"></p></td> <tr>
<tr><td><td><input type="submit" class="btn btn-primary" value="Submit" onclick="return valid()"/></center></tr>

</table>
</form:form>
</body>
</html>
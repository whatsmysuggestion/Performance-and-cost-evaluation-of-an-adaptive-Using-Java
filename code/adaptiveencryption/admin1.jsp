<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
    <head>
	<title>login</title>
    </head>
    <body>
	<form>
	<% 
       
	String name=request.getParameter("aname");
	String pass=request.getParameter("pass");		
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	
		if(name.equalsIgnoreCase("admin")&& pass.equalsIgnoreCase("admin"))
		{
		
		
		 %>
 <jsp:forward page="admin_page.jsp"/>
	    	<%
		}
	    else 
	     {
	
		
		
	  out.println("Login Error-please check ur ID and password");
	}
	

	    %>
             </form>
       </body> 	
</html>
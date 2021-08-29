<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>
<html>
    <head>
	<title>login</title>
    </head>
    <body>
	<form>
	<% 
    String key=request.getParameter("key");
	System.out.println(key);
	// String s10=request.getParameter("ffid");
 
 
 	
	Integer s10=(Integer)session.getAttribute("id");
	
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select scode from user where iid='"+s10+"' ";
	try
	{
	    con=databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
		if(rs.next())
		{
		
		String  s=rs.getString(1);
		System.out.println(s);
	
		
		if(key.equals(s))
		{
		response.sendRedirect("encryptedmetadata.jsp");
			}
			 else
	     {
		 
			response.sendRedirect("cp.jsp");
	
	  }
			
			
				
		}
	   
	}
	catch(SQLException e1)
	{
		
		System.out.println(e1);
	
	 }

            %>
             </form>
       </body> 	
</html>
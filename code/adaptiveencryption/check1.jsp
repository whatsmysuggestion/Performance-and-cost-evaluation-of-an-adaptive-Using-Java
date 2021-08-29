<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>
<html>
    <head>
	<title>login</title>
    </head>
    <body>
	<form>
	<% 
    String key=request.getParameter("key1");
	System.out.println(key);
	// String s10=request.getParameter("ffid");
 
 
 	
	String s10=(String)session.getAttribute("gg");
	session.setAttribute("pop",s10);
	System.out.println(s10);
	
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select masterkey,mdata from files where fid='"+s10+"' ";
	try
	{
	    con=databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
		if(rs.next())
		{
		
		String  s=rs.getString(1);
		System.out.println(s);
		String  s1=rs.getString(2);
session.setAttribute("mdata",s1);		
		
		
		
		if(key.equals(s))
		{
		response.sendRedirect("originalmdata.jsp");
			}
			 else
	     {
		 
			response.sendRedirect("request.jsp");
	
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
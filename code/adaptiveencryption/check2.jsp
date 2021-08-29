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
 
 
 	
	int ff = (Integer) session.getAttribute("fidd");
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select masterkey1 from files where fid='"+ff+"' ";
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
		response.sendRedirect("tt1.jsp");
			}
			 else
	     {
		 
			response.sendRedirect("request10.jsp");
	
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
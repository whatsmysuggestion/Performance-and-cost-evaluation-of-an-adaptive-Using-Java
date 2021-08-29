
<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%

Statement st = null;
ResultSet rs = null;
String email=null;
int id;
String name = request.getParameter("name");
	session.setAttribute("name",name);
String password = request.getParameter("pass");

try
			{
			Connection con=databasecon.getconnection();
			st=con.createStatement();
	String qry =" select  * from user where name='"+name+"' and password='"+password+"' "; 
	rs = st.executeQuery(qry);
	if(!rs.next()){
	out.println("Enter correct name And password");
	
	}
	else{
	
	
	id=rs.getInt("iid");
	session.setAttribute("id",id);
	
	
	email=rs.getString("email");
	session.setAttribute("eemail",email);
	//System.out.println(email);
	
	response.sendRedirect("user_page.jsp");
	
	
	
	
			
	}
	con.close();
	st.close();
}
catch(Exception ex){
	out.println(ex);
}
%>
</body>
</html>



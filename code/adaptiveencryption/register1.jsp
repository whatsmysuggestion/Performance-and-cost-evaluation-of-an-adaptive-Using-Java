<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<html>
<head>
<title> Scientific Workflow</title>

</head>

<body>

<%

String name=null,email=null;


String a=request.getParameter("name");
String b=request.getParameter("pass");

String c=request.getParameter("email");

String d=request.getParameter("mobile");
String e=request.getParameter("dob");
String f=request.getParameter("state");
String g=request.getParameter("country");

int aaa=(int) (Math.random() * 100);
int bbb=aaa*5;


java.util.Date now = new java.util.Date();

Date date = new SimpleDateFormat("dd-MM-yyyy").parse(e);
String a2= new SimpleDateFormat("yyyy-MM-dd").format(date);
PreparedStatement ps = null;

	ResultSet rs = null;
		
	try
	{
		
		Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into register(name,password,email,mobile,dob,country) values(?,?,?,?,?,?)");
		ps.setString(1,a); 
ps.setString(2,b);
ps.setString(3,c);
ps.setString(4,d);
ps.setString(5,a2);
ps.setString(6,g);
ps.executeUpdate();
 response.sendRedirect("index.html?success");
}
catch(Exception e1)
{    
out.println(e1.getMessage());
}

%>
</body>
</html>

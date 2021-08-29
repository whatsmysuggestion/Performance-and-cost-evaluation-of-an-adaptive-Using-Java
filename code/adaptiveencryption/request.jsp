
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage=""%>
<html>
<head>
<title> Scientific Workflow</title>

</head>

<body>

<%

Integer aa=(Integer)session.getAttribute("id");
String a=(String)session.getAttribute("name");
String email=(String)session.getAttribute("eemail");

String g=(String)session.getAttribute("pop");
//String c=request.getParameter("status");
java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "dd/MM/yyyy";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;


int aaa=(int) (Math.random() * 100);
int bbb=aaa*5;

String status="waiting";
PreparedStatement ps = null;

	ResultSet rs = null;
		
	try
	{
		
		Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into request(id,fid,name,email,date,status) values(?,?,?,?,?,?)");
		ps.setInt(1,aa); 
		ps.setString(2,g); 
ps.setString(3,a);
ps.setString(4,email);

ps.setString(5,strDateNew);
ps.setString(6,status);
ps.executeUpdate();
 response.sendRedirect("update1.jsp?success");
}
catch(Exception e1)
{    
out.println(e1.getMessage());
}

%>
</body>
</html>

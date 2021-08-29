<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<html>
<head>
<title> Scientific Workflow</title>

</head>

<body>

<%




Integer id = (Integer) session.getAttribute("id");

String name = (String) session.getAttribute("name");

String email = (String) session.getAttribute("eemail");

String dname=request.getParameter("dname");
session.setAttribute("dname",dname);
String mdata=request.getParameter("mdata");
session.setAttribute("mdata",mdata);


java.util.Date now = new java.util.Date();
				String d=now.toString();
	 			String DATE_FORMAT = "hh:mm:ss a";
				SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     			String strDateNew = sdf.format(now) ;
				
				SimpleDateFormat displayFormat = new SimpleDateFormat("HH:mm:ss");
       			 SimpleDateFormat parseFormat = new SimpleDateFormat("hh:mm:ss a");
      			 java.util.Date date = parseFormat.parse(strDateNew);
       			//out.println(parseFormat.format(date) + " = " + displayFormat.format(date));
				String startime12 = parseFormat.format(date);
				String startime24 = displayFormat.format(date);
				PreparedStatement ps = null;

	ResultSet rs = null;
		
	try
	{
		
		Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into timer(uid,name,email,start12,start24) values(?,?,?,?,?)");
		ps.setInt(1,id); 
ps.setString(2,name);
ps.setString(3,email);
ps.setString(4,startime12);
ps.setString(5,startime24);

ps.executeUpdate();
 response.sendRedirect("owner1.jsp?success");
}
catch(Exception e1)
{    
out.println(e1.getMessage());
}

%>
</body>
</html>

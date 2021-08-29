<%@ page contentType="text/html; charset=windows-1252" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat,java.net.InetAddress,java.net.UnknownHostException"%>
<%@ page import="databaseconnection.*,java.text.DecimalFormat,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Untitled Document</title>
</head>

<body>

<%

String timing= "start";
Integer id = (Integer) session.getAttribute("id");
System.out.println(id);
String name = (String) session.getAttribute("name");
System.out.println(name);
String email = (String) session.getAttribute("eemail");
System.out.println(email);
String dname=request.getParameter("dname");
System.out.println(dname);
String mdata=request.getParameter("mdata");
System.out.println(mdata);

			
			int user_id = (int)(Math.random()*10000);
				session.setAttribute("userid",user_id);
				
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
				
				String servip = null;
				InetAddress ip;
	 		 try {
 
				ip = InetAddress.getLocalHost();
				//out.println("Current IP address : " + ip.getHostAddress());
 				servip = ip.getHostAddress();
				//out.println(hostname);
				
	 			 } catch (UnknownHostException e) {
 
					e.printStackTrace();
 				 }
				 
		String clientip =  request.getRemoteAddr(); 
				
try{				
	Connection con1 = databasecon.getconnection();
	PreparedStatement ps1 = con1.prepareStatement("INSERT INTO timer (uid,name,email,start12,start24)VALUES(?,?,?,?,?)");
	ps1.setInt(1,id);
	ps1.setString(2,name);
	ps1.setString(3,email);
	ps1.setString(4,startime12);
	ps1.setString(5,startime24);

		response.sendRedirect("owner1.jsp");
	
	}
catch(Exception e11)
{
out.println(e11);
}
%>
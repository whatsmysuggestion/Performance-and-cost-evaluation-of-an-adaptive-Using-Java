<%@ page import="java.io.*,java.text.ParseException,java.lang.*,java.sql.*,java.util.*,java.util.Date,java.text.*,java.text.SimpleDateFormat" %>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage="Error.jsp"%>
<%@page import=" java.security.MessageDigest"%>

<%
String status="waiting";
//int count2=0;
int count4=0;
String d=request.getParameter("a");
 String a=(String)session.getAttribute("pop");
//out.println(d);
session.setAttribute("d",d);
Connection con3=null;
ResultSet rs3=null;
PreparedStatement ps3=null,ps2=null;
Statement st3=null;

Connection con4=null;
ResultSet rs4=null;
PreparedStatement ps4=null;
Statement st4=null;






try{
	Connection con = databasecon.getconnection();

  ps3=con.prepareStatement("Update files set request1=? where fid='"+a+"'");

           
			ps3.setString(1,status);
	
			ps3.executeUpdate();
response.sendRedirect("sent.jsp");


}








catch(Exception e22)
{
out.print(e22);
}




%>

<%@ page contentType="text/html; charset=windows-1252" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.util.Date,java.text.SimpleDateFormat,java.net.InetAddress,java.net.UnknownHostException"%>
<%@ page import="databaseconnection.*,java.text.DecimalFormat,java.util.*"%>
<html>
<head>
<title>Astro Download</title>
<script language="JavaScript">

</script>
</head>
<body background="Images/clouds_background.jpg">
<%
Thread.sleep(2000);

session.removeAttribute("resumeBlob");
String fileid=(String)session.getAttribute("pop");
String uname=(String)session.getAttribute("name");
//int userid = (Integer) session.getAttribute("");
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
int uid=0;
int fid=0;
String fileName = null;
	String url = null;
	String size = null,dataname=null,filename=null;

try{		
			Connection conn1 = databasecon.getconnection();
			PreparedStatement ps1=conn1.prepareStatement("select * from files where fid = '"+fileid+"'");
			ResultSet rst1 = ps1.executeQuery();
			while(rst1.next())
			{
			uid=rst1.getInt("uid");
			fid=rst1.getInt("fid");
				fileName = rst1.getString("fname");
				dataname = rst1.getString("mdata");
				url = rst1.getString("filepath");
				size = rst1.getString("filesize");
			}
	}
catch(Exception a)
{
	out.println(a);
}	

try{				
	Connection con2 = databasecon.getconnection();
	PreparedStatement ps2 = con2.prepareStatement("insert into downs1 (uid,uname,fid,fname,mdata,filesize,filepath,start12,start24)VALUES(?,?,?,?,?,?,?,?,?)");
	ps2.setInt(1,uid);
	ps2.setString(2,uname);
	ps2.setInt(3,fid);
	ps2.setString(4,fileName);
	ps2.setString(5,dataname);
	ps2.setString(6,size);
	ps2.setString(7,url);
	
	ps2.setString(8,startime12);
ps2.setString(9,startime24);

	//ps2.setString(7,strDateNew);
	ps2.executeUpdate();
	response.sendRedirect("search.jsp");
	}
catch(Exception e11)
{
out.println(e11);
}		





	

%>

</body>
</html>
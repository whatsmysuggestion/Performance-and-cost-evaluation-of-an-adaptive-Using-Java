<%@ page import="java.sql.*, javax.sql.*, databaseconnection.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<%@ page import="java.util.Date,java.text.SimpleDateFormat,java.net.InetAddress,java.net.UnknownHostException"%>
<%@ page import="databaseconnection.*,java.text.DecimalFormat"%>
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
int fileid = (Integer) session.getAttribute("fidd");
//int userid = (Integer) session.getAttribute("");
java.util.Date now = new java.util.Date();
				String d=now.toString();
	 			String DATE_FORMAT = "dd/MM/yyyy";
				SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     			String strDateNew = sdf.format(now) ;
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
				dataname = rst1.getString("dname");
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
	PreparedStatement ps2 = con2.prepareStatement("INSERT INTO downs (uid,fid,,fname,mdata,filesize,filepath,date)VALUES(?,?,?,?,?,?,?)");
	ps2.setInt(1,uid);
	ps2.setInt(2,fid);
	ps2.setString(3,fileName);
	ps2.setString(4,dataname);
	ps2.setString(5,size);
	ps2.setString(6,url);
	ps2.setString(7,strDateNew);
	ps2.executeUpdate();
	}
catch(Exception e11)
{
out.println(e11);
}		

String user_id = String.valueOf(uid);
//session.setAttribute("user_id",user_id);
try
{     
out.print(uid);
	Blob resume = null;
	Connection con1 = null;
	PreparedStatement ps1 = null;
	ResultSet rs1 = null;
	String filename1 = null;
	String sql1 = "select * from files where fid = '"+fileid+"'";
	out.print(sql1);
	try
	{
	
	Class.forName("com.mysql.jdbc.Driver");
	
		con1 = databasecon.getconnection();
		ps1 = con1.prepareStatement(sql1);
		rs1 = ps1.executeQuery();
		while(rs1.next())
		{
		resume = rs1.getBlob(12);
		filename1= rs1.getString("fname");
		}
		out.println(filename1);
		out.print(resume);
	}
	catch(Exception e)
	{
		out.println("Exception :"+e);
	}
	finally
	{
		if(con1 != null)
			con1.close();
		if(ps1 != null)
			ps1.close();
		if(rs1 != null)
			rs1.close();
	}
	
	session.setAttribute("filename1",filename1);
	session.setAttribute("resumeBlob",resume);
	response.sendRedirect("download1.jsp");
}
catch(Exception e)
{
}



	

%>

</body>
</html>
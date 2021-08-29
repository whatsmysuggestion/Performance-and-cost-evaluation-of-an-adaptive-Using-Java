<%@ page import="java.sql.*, javax.sql.*, databaseconnection.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>
<title>Astro Download</title>
<script language="JavaScript">

</script>
</head>

<body>
<%
Thread.sleep(2000);
%>		
<%
		Blob b = (Blob)session.getAttribute("resumeBlob");
		String fileName = (String)session.getAttribute("filename1");
		out.print(b);
		
		if(b != null)
		{
			byte[] ba = b.getBytes(1, (int)b.length());
			response.setContentType("application/document");
			response.setHeader("Content-Disposition","attachment; filename=\""+fileName+"\"");			
			OutputStream os = response.getOutputStream();
			os.write(ba);
			os.close();
			ba = null;
			//session.removeAttribute("fileid");
			session.removeAttribute("document1");
		response.sendRedirect("tt.jsp");
		}
		else
		{
			//response.sendRedirect("getdownfile.jsp?suc");
		}
		
		
%>

</body>
</html>

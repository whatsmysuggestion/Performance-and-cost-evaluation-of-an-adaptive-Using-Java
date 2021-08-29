<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*"  errorPage=""%>

<%	

int ap=(int) (Math.random() * 1000000);
session.setAttribute("pp1",ap);
//out.println(sb);
//String password2=a.toString();
String ap1 =Integer.toString(ap);
session.setAttribute("pp",ap1);




		String name = (String) session.getAttribute("name");
		Integer uid = (Integer)session.getAttribute("id");
		String email = (String) session.getAttribute("eemail");
		String dname = (String) session.getAttribute("dname");
		String mdata = (String) session.getAttribute("mdata");
		ArrayList list = new ArrayList();
		ServletContext context = getServletContext();

		String dirName =context.getRealPath("Gallery");
		String paramname=null;
		String file=null;
		String filename=null,image=null,path=null,size=null;
		Connection con=null;	
		long size_kb=0;
		
		
		//int userid = Integer.parseInt(user_id);
		
			 	
		//name=(String)session.getAttribute("name");
		//email=(String)session.getAttribute("email");
		java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "dd/MM/yyyy";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;
 
		File file1 = null;
			String fPath =null;
		
		try {

			MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB

			Enumeration params = multi.getParameterNames();
			while (params.hasMoreElements()) 
			{
				paramname = (String) params.nextElement();
				
				if(paramname.equalsIgnoreCase("filename"))
				{
					filename=multi.getParameter(paramname).toString();	
				}
								
				if(paramname.equalsIgnoreCase("image"))
				{
					image=multi.getParameter(paramname);
				}
				
				
				}
					
			int f = 0;
	Enumeration files = multi.getFileNames();	
	while (files.hasMoreElements()) 
	{
		paramname = (String) files.nextElement();
		if(paramname.equals("d1"))
		{
			paramname = null;
		}
		
		if(paramname != null)
		{
			f = 1;
			image = multi.getFilesystemName(paramname);
			System.out.println(image);
			fPath = context.getRealPath("Gallery/"+image);
			path="Gallery/"+image;
			System.out.println(path);
			file1 = new File(fPath);
			FileInputStream fs = new FileInputStream(file1);
			list.add(fs);
			
			long file_size = file1.length();
			size_kb=file_size/1024;
			size=size_kb+"kb".toString();
		}		
	}
	        FileInputStream fs1 = null;
            //name=dirName+"\\Gallery\\"+image;
						
			
			con=databasecon.getconnection(); 
				//out.print(imgname);
			PreparedStatement ps1=con.prepareStatement("insert into files(uid,uname,email,fname,mdata,filer,filepath,filesize,date,mdata1,filer1,masterkey) VALUES(?,?,?,?,?,?,?,?,?,AES_ENCRYPT(?,'key'),AES_ENCRYPT(?,'key'),?)");
               	ps1.setInt(1,uid);
				ps1.setString(2,name);
					ps1.setString(3,email);
				
				ps1.setString(4,dname);
				ps1.setString(5,mdata);	
       			ps1.setString(6,image);
					 
			    ps1.setString(7,path);	
				ps1.setString(8,size);
				ps1.setString(9,strDateNew);
				ps1.setString(10,mdata);
				ps1.setString(11,image);
				ps1.setString(12,ap1);												
				
			ps1.executeUpdate();	
			response.sendRedirect("upp.jsp?suc");	
		} 
		catch (Exception e) 
		{
			out.println(e.getMessage());
		}

	
 %>

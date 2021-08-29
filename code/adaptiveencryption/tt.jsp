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
				java.util.Date now = new java.util.Date();
				String d=now.toString();
	 			String DATE_FORMAT = "hh:mm:ss a";
				SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     			String strDateNew = sdf.format(now) ;
				
				SimpleDateFormat displayFormat = new SimpleDateFormat("HH:mm:ss");
       			 SimpleDateFormat parseFormat = new SimpleDateFormat("hh:mm:ss a");
      			 java.util.Date date = parseFormat.parse(strDateNew);
       			//out.println(parseFormat.format(date) + " = " + displayFormat.format(date));
				String endtime12 = parseFormat.format(date);
				String endtime24 = displayFormat.format(date);
				
				
				
		int ff = (Integer) session.getAttribute("fidd");
		String startime = null;
		
		try{	
			
			Connection conn = databasecon.getconnection();
			PreparedStatement ps=conn.prepareStatement("select * from downs where fid = '"+ff+"'");
			ResultSet rst = ps.executeQuery();
			while(rst.next())
			{
				startime = rst.getString("start24");
			}
			}
        catch(Exception e11)
             {
               out.println(e11);
             }
		
			 
		
		/*String start1[] = startime.split(":");
		String end1[] = endtime24.split(":");
		
		String endtiming1 = endtime24.replace(':','.');
		String startiming1 = startime.replace(':','.');
		
		double start21 = Double.parseDouble(start1[0]);
		double end21 = Double.parseDouble(end1[0]);
		
		double start22 = Double.parseDouble(start1[1]);
		double end22 = Double.parseDouble(end1[1]);
		
		out.println("Start Time : "+startime);
		out.println("End Time : "+endtime24);
		
		double time2 = 0;
		String time3 = null;
		//time = Double.parseDouble(new DecimalFormat("##.##").format(time));
		//System.out.println(time);
		if(end21<start21)
		{
			
			//end21 = end21+24;
			//time1 = end21-start21;
			if(end22<start22)
			{	
				
				double endtiming2 = Double.parseDouble(endtiming1)+24;
				double startiming2 = Double.parseDouble(startiming1);
				
				time2 = endtiming2-startiming2;
				time2 = time2-0.40;
				time2 = Double.parseDouble(new DecimalFormat("##.##").format(time2));
				time3 = String.valueOf(time2);
				time3 = time3.replace('.', ':');
				out.println("Total Time : "+time3);
			}
			else
			{
				double endtiming2 = Double.parseDouble(endtiming1)+24;
				double startiming2 = Double.parseDouble(startiming1);
				
				time2 = endtiming2-startiming2;
				time2 = Double.parseDouble(new DecimalFormat("##.##").format(time2));
				time3 = String.valueOf(time2);
				time3 = time3.replace('.', ':');
				out.println("Total Time : "+time3);
			}
		}
		else
		{
			if(end22<start22)
			{	
				
				double endtiming2 = Double.parseDouble(endtiming1);
				double startiming2 = Double.parseDouble(startiming1);
				
				time2 = endtiming2-startiming2;
				time2 = time2-0.40;
				time2 = Double.parseDouble(new DecimalFormat("##.##").format(time2));
				time3 = String.valueOf(time2);
				time3 = time3.replace('.', ':');
				out.println("Total Time : "+time3);
			}
			else
			{
				double endtiming2 = Double.parseDouble(endtiming1);
				double startiming2 = Double.parseDouble(startiming1);
				
				time2 = endtiming2-startiming2;
				time2 = Double.parseDouble(new DecimalFormat("##.##").format(time2));
				time3 = String.valueOf(time2);
				time3 = time3.replace('.', ':');
				out.println("Total Time : "+time3);
			}
		}*/
		
		String filenaming = null;
		String filenamer = null,gg=null,gg1=null;
		ArrayList<String> fnme = new ArrayList<String>();
		ArrayList<String> arr = new ArrayList<String>();
		String filesize = null;
		
		try{	
			
			Connection conn = databasecon.getconnection();
			PreparedStatement ps=conn.prepareStatement("select * from files where fid = '"+ff+"'");
			ResultSet rst = ps.executeQuery();
			while(rst.next())
			{
			
			gg=rst.getString("filer1");
			session.setAttribute("filer1",gg);
			gg1=rst.getString("mdata1");
			session.setAttribute("mdata1",gg1);
				filesize = rst.getString("filesize");
				filenamer = rst.getString("fname");
				arr.add(filesize);
				fnme.add(filenamer);
				
			}
			}
        catch(Exception e11)
             {
               out.println(e11);
             }
		
		
	
		///out.print(filesize);	 
		
		String fnamer[] = new String[fnme.size()];
		fnme.toArray(fnamer);
		
		for(int i=0;i<fnamer.length;i++)
		{
			if(filenaming!=null)
				{
					filenaming=filenaming+", "+fnamer[i];	
				}
				else
				{
					filenaming=fnamer[i];	
				}
		}
		
		String sizing = null;
		double sizeprize = 0;
		int size = 0;
		int nof = 0;
		/*for(String q : arr)
		{
			out.print(q);
		}
		*/
		String fileser[] = new String[arr.size()];
		arr.toArray(fileser);
		
		String finalsizer = null;
		
		for(int i=0;i<fileser.length;i++)
		{
			if(!(fileser[i]==null))
			{
				char sizer[] = fileser[i].toCharArray();
				for(int j=0;j<sizer.length-1;j++)
				{
					if(Character.isDigit(sizer[j]))
					{
						if(sizing!=null)
						{
							sizing=sizing+sizer[j];	
						}
						else
						{
							sizing=Character.toString(sizer[j]);	
						}
					}
					
				}
			}
			else
			{
			sizing="0";
			}
			
					if(finalsizer!=null)                                                   
						{
							finalsizer=finalsizer+", "+fileser[i];	
						}
						else
						{
							finalsizer=fileser[i];	
						}
			
			nof++;
			size = size+Integer.parseInt(sizing);
			sizing = null;
		}
		
		
		out.println(size);
		
		
		//flimtech membrance tw30-1812-75
		//int size = Integer.parseInt(sizing);
		if(size>20)
		{
			sizeprize = (size*0.1)/3;
		}
		sizeprize = Double.parseDouble(new DecimalFormat("##.##").format(sizeprize));
		out.println(sizeprize);
		
		String finalsizer1 = String.valueOf(size);
		finalsizer1 = finalsizer1+"kb";
		
		//HH converts hour in 24 hours format (0-23), day calculation
		SimpleDateFormat format = new SimpleDateFormat("HH:mm:ss");
 
		Date d1 = null;
		Date d2 = null;
		String finalusage = null;
 		double usageprize = 0;
		
		try {
			d1 = format.parse(startime);
			d2 = format.parse(endtime24);
 
			//in milliseconds
			long diff = d2.getTime() - d1.getTime();
 
			long diffSeconds = diff / 1000 % 60;
			long diffMinutes = diff / (60 * 1000) % 60;
			long diffHours = diff / (60 * 60 * 1000) % 24;
			//long diffDays = diff / (24 * 60 * 60 * 1000);
 
			//System.out.print(diffDays + " days, ");
			//out.print(diffHours + " hours, ");
			//out.print(diffMinutes + " minutes, ");
			//out.print(diffSeconds + " seconds.");
			
			if(diffHours==0 && diffMinutes==0)
			{
				finalusage = diffSeconds+" Secs";
			}
			else if(diffHours==0 && diffMinutes!=0)
			{
				finalusage = diffMinutes+":"+diffSeconds+" Mins";
			}
			else
			{
				finalusage = diffHours+":"+diffMinutes+":"+diffSeconds+" Hours";
			}
			
			diffSeconds = diffSeconds+(diffMinutes*60)+(diffHours*60*60);
			usageprize = diffSeconds*0.50;

 
		} catch (Exception e) {
			e.printStackTrace();
		}
			double totalprize =  usageprize+sizeprize;
		//	out.println("usage : "+finalusage);
		//	out.print("price : "+totalprize);
			totalprize =  Double.parseDouble(new DecimalFormat("##.##").format(totalprize));

String query=null;		
String end12 = endtime12;
String end24 = endtime24;
double sprz = sizeprize;
double upz = usageprize;
double tpz = totalprize;
String fge = finalusage;
			
query="update downs set end12='"+end12+"',end24='"+end24+"',sizeprize='"+sprz+"',usageprize='"+upz+"',totalprize='"+tpz+"',usagetime='"+fge+"',nof='"+nof+"',tfs='"+finalsizer1+"' where fid='"+ff+"';";
	try{				
	Connection con2 = databasecon.getconnection();
	PreparedStatement ps2 = con2.prepareStatement(query);
	 ps2.executeUpdate();
	
	response.sendRedirect("download.jsp");
	}
catch(Exception e11)
{
out.println(e11);
}	
				

%>
</body>
</html>                                                                                                                                                          
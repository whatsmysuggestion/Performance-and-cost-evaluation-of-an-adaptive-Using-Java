<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


        <%
		
		
		
		
		
	int uid=0;	
	int fid=0;	
		int hh=0;
Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
Statement st=null;

ResultSet rs1=null;
PreparedStatement ps1=null;
Statement st1=null;
String name=null,scode=null,mdata1=null,kkey=null ;

String v="waiting";

hh=(Integer)session.getAttribute("jk");

try
{
con=databasecon.getconnection();
 st=con.createStatement();   
 String sqll="select * from files where fid='"+hh+"' ";
 rs=st.executeQuery(sqll);
while(rs.next()){
	uid=rs.getInt("uid");
	session.setAttribute("idd",uid);
	kkey=rs.getString("masterkey");
	
	
}	 	
}
catch(Exception er)
{
}

%>




<%



String email=(String)session.getAttribute("mail");

String host="", user="", pass="";

host ="smtp.gmail.com"; //"smtp.gmail.com";

user ="mailfromchennaisunday@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

pass ="chennaisunday"; //Your gmail password

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

String to =email; // out going email id

String from ="mailfromchennaisunday@gmail.com"; //Email id of the recipient
String subject=(String)session.getAttribute("subject");
//String subject ="welcome";

String messageText ="Master Key1="+kkey+" ";


//session.setAttribute("emailid",emailid);
boolean sessionDebug = true;

Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol.", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.", "true");
props.put("mail.smtp.port", "465");
props.put("mail.smtp.socketFactory.fallback", "false");
props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
Session mailSession = Session.getDefaultInstance(props, null);
mailSession.setDebug(sessionDebug);
Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
msg.setContent(messageText, "text/html"); // use setText if you want to send text
Transport transport = mailSession.getTransport("smtp");
transport.connect(host, user, pass);
try {
transport.sendMessage(msg, msg.getAllRecipients());
//out.println("message successfully sended"); // assume it was sent
//response.sendRedirect("now.jsp");
}
catch (Exception err) {

out.println("message not successfully sended"); // assume it’s a fail
}
transport.close();

%>


<%
String cc="key granted";
//int count2=0;
int count4=0;

String bb=(String)session.getAttribute("qq");
String d=request.getParameter("a");
 Integer idd=(Integer)session.getAttribute("idd");
//out.println(d);
session.setAttribute("d",d);
//Connection con3=null;
ResultSet rs3=null;
PreparedStatement ps3=null,ps2=null;
Statement st3=null;

Connection con4=null;
ResultSet rs4=null;
PreparedStatement ps4=null;
Statement st4=null;






try{
	Connection con3 = databasecon.getconnection();

  ps3=con3.prepareStatement("Update files set request1=? where fid='"+hh+"'");

           
		//	ps3.setString(1,bb);
	ps3.setString(1,cc);
	
			ps3.executeUpdate();
response.sendRedirect("success.jsp");


}








catch(Exception e22)
{
out.print(e22);
}




%>



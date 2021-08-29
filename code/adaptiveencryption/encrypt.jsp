<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%



String email=(String)session.getAttribute("eemail");
String key=(String)session.getAttribute("pp");


String host="", user="", pass="";

host ="smtp.gmail.com"; //"smtp.gmail.com";

user ="mailfromchennaisunday@gmail.com"; //"YourEmailId@gmail.com" // email id to send the emails

pass ="chennaisunday"; //Your gmail password

String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";

String to =email; // out going email id

String from ="mailfromchennaisunday@gmail.com"; //Email id of the recipient
String subject=(String)session.getAttribute("subject");
//String subject ="welcome";

String messageText ="Your Master Key is="+key+" ";


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

}
catch (Exception err) {

out.println("message not successfully sended"); // assume it’s a fail
}
transport.close();

%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Glossy Box | Free CSS Template</title>
<meta name="keywords" content="glossy box, web design, colorful background, free templates, website templates, CSS, HTML" />
<meta name="description" content="Glossy Box | free website template with a colorful background" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />
<script language="javascript" type="text/javascript" src="datetimepicker.js">



</script>


<style>

STableGenerator {
	
	box-shadow: 10px 10px 5px #888888;
	border:1px solid #c9ab14;
	
	-moz-border-radius-bottomleft:25px;
	-webkit-border-bottom-left-radius:25px;
	border-bottom-left-radius:25px;
	
	-moz-border-radius-bottomright:25px;
	-webkit-border-bottom-right-radius:25px;
	border-bottom-right-radius:25px;
	
	-moz-border-radius-topright:25px;
	-webkit-border-top-right-radius:25px;
	border-top-right-radius:25px;
	
	-moz-border-radius-topleft:25px;
	-webkit-border-top-left-radius:25px;
	border-top-left-radius:25px;
}.CSSTableGenerator table{
    
        border-spacing: 0;
	
	
}.CSSTableGenerator tr:last-child td:last-child {
	-moz-border-radius-bottomright:25px;
	-webkit-border-bottom-right-radius:25px;
	border-bottom-right-radius:25px;
}
.CSSTableGenerator table tr:first-child td:first-child {
	-moz-border-radius-topleft:25px;
	-webkit-border-top-left-radius:25px;
	border-top-left-radius:25px;
}
.CSSTableGenerator table tr:first-child td:last-child {
	-moz-border-radius-topright:25px;
	-webkit-border-top-right-radius:25px;
	border-top-right-radius:25px;
}.CSSTableGenerator tr:last-child td:first-child{
	-moz-border-radius-bottomleft:25px;
	-webkit-border-bottom-left-radius:25px;
	border-bottom-left-radius:25px;
}.CSSTableGenerator tr:hover td{
	background-color:#ffffaa;
		

}
.CSSTableGenerator td{
	vertical-align:middle;
		background:-o-linear-gradient(bottom, #ffffff 5%, #ffffaa 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #ffffff), color-stop(1, #ffffaa) ); 
	background:-moz-linear-gradient( center top, #ffffff 5%, #ffffaa 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#ffffff", endColorstr="#ffffaa");	background: -o-linear-gradient(top,#ffffff,ffffaa);

	background-color:#ffffff;

	border:1px solid #c9ab14;
	border-width:0px 1px 1px 0px;
	text-align:left;
	padding:8px;
	font-size:10px;
	font-family:Arial;
	font-weight:bold;
	color:#000000;
}.CSSTableGenerator tr:last-child td{
	border-width:0px 1px 0px 0px;
}.CSSTableGenerator tr td:last-child{
	border-width:0px 0px 1px 0px;
}.CSSTableGenerator tr:last-child td:last-child{
	border-width:0px 0px 0px 0px;
}
.CSSTableGenerator tr:first-child td{
		background:-o-linear-gradient(bottom, #11e0e0 5%, #56ff56 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #11e0e0), color-stop(1, #56ff56) );
	background:-moz-linear-gradient( center top, #11e0e0 5%, #56ff56 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#11e0e0", endColorstr="#56ff56");	background: -o-linear-gradient(top,#11e0e0,56ff56);

	background-color:#11e0e0;
	border:0px solid #c9ab14;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:14px;
	font-family:Arial;
	font-weight:bold;
	color:#000000;
}
.CSSTableGenerator tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #11e0e0 5%, #56ff56 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #11e0e0), color-stop(1, #56ff56) );
	background:-moz-linear-gradient( center top, #11e0e0 5%, #56ff56 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#11e0e0", endColorstr="#56ff56");	background: -o-linear-gradient(top,#11e0e0,56ff56);

	background-color:#11e0e0;
}
.CSSTableGenerator tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.CSSTableGenerator tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
}	</style>
</head>
<body>

<div id="templatemo_wrapper_outer">
	<div id="templatemo_wrapper">
    
    	<div id="templatemo_header">
			 <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p><font size="5"  color="#FFCC00"><b>&nbsp;&nbsp;&nbsp;&nbsp;
	  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Performance 
        and <font color="#CC0066">cost evaluation of</font> an adaptive encryption</b></font></p>
      <p>&nbsp;</p>
      <p><font size="5"  color="#FFCC00"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;architecture 
        for cloud databases </strong> </font> 
        <!-- end of site_title -->
      </p>
      <p>&nbsp;</p>
      <p>&nbsp; </p>
			<div class="cleaner"></div>
		</div>
         &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <div id="templatemo_menu">
            <ul>
                <li><a href="index.html" class="current">Home</a></li>
                <li><a href="owner1.jsp">Back</a></li>
            
               
            </ul>    	
        </div> <!-- end of templatemo_menu -->
        
        <div id="templatemo_slider_wrapper">
        
        	<div id="templatemo_slider">
            
				
        <div id="one" class="contentslider"> 
          <div class="cs_wrapper"> 
            <div class="cs_slider"> 
              <div class="cs_article"> 
                <div class="slider_content_wrapper"> 
                  <div class="slider_image"> <img src="images/slider/cloud.jpg"> 
                  </div>
                  <div class="slider_content"> 
                    <h2>Cloud Computing</h2>
                    The cloud database as a service is a novel paradigm that can 
                    support several Internet-based applications, but its adoption 
                    requires the solution of information confidentiality problems. 
                    We propose a novel architecture for adaptive encryption of 
                    public cloud databases that offers an interesting alternative 
                    to the trade-off between the required data confidentiality 
                    level and the flexibility of the cloud database structures 
                    at design time. </div>
                </div>
              </div>
              <!-- End cs_article -->
              <div class="cs_article"> 
                <div class="slider_content_wrapper"> 
                  <div class="slider_image"> <img src="images/slider/archi22.bmp"> 
                  </div>
                  <div class="slider_content"> 
                    <h2>MetaData</h2>
                    Table metadata includes the correspondence between the plain 
                    table name and the encrypted table name because each encrypted 
                    table name is randomly generated. Moreover, for each column 
                    of the original plain table it also includes a column metadata 
                    parameter containing the name and the data type of the corresponding 
                    plain column (e.g., integer, string, timestamp). </div>
                </div>
              </div>
              <!-- End cs_article -->
              <div class="cs_article"> 
                <div class="slider_content_wrapper"> 
                  <div class="slider_image"> <img src="images/slider/archi1.bmp"> 
                  </div>
                  <div class="slider_content"> 
                    <h2>PlainText Database</h2>
                    plaintext column is converted into one or more encrypted columns, 
                    each one corresponding to an onion. Each plaintext value is 
                    encrypted through all the layers of its onions. For example, 
                    the plaintext values associated to Onion-Eq are encrypted 
                    through Det, then the Det value is encrypted through Rand. 
                    The most external layer of an onion is called actual layer, 
                    which corresponds to its strongest encryption algorithm. </div>
                </div>
              </div>
              <!-- End cs_article -->
            </div>
            <!-- End cs_slider -->
          </div>
          <!-- End cs_wrapper -->
        </div>
        <!-- End contentslider -->
                
                <!-- Site JavaScript -->
                <script type="text/javascript" src="js/jquery-1.3.1.min.js"></script>
                <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
                <script type="text/javascript" src="js/jquery.ennui.contentslider.js"></script>
                <script type="text/javascript">
                    $(function() {
                    $('#one').ContentSlider({
                    width : '940px',
                    height : '240px',
                    speed : 400,
                    easing : 'easeOutSine'
                    });
                    });
                </script>
                <script src="js/jquery.chili-2.2.js" type="text/javascript"></script>
                <script src="js/chili/recipes.js" type="text/javascript"></script>
                <div class="cleaner"></div>
            	
            </div>
        
        </div>
        
        <div id="templatemo_content_wrapper">
			<div id="content"> 
            	<%
				
				String aa=(String)session.getAttribute("mdata1");
				String bb=(String)session.getAttribute("filer1");
				
				
				%>
        <div class="CSSTableGenerator">
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          </p>
          <table align="center" width="89%" height="94%" ><tr>
			  <td height="56"  colspan="2"align="center"><font size="3"  color="#FFCC00">
			  <b>Welcome:</b></font>&nbsp;<font size="3" color="#000000"><b><%=aa%></b></font></td></tr>
			  <tr>
			  <td width="312" height="326">
			  <form action="success.jsp" method="post" enctype="multipart/form-data">
			  <table  width="89%" height="72%">
			  <tr><td width="314"><font size="3" color="#000000"><b>Medta Data</b></font></td>
			  <td width="530"><input type="text" name="fid" value="<%=aa%>"></td>
			  </tr>
			  			  <tr><td height="106"><font size="3" color="#000000"><b>Encryped file</b></font></td>
			  <td><textarea rows="15" cols="60"><%=bb%></textarea></td></tr>
			  <tr align="center"><td></td>
			  <td align="center"><input type="submit" value="Upload"></td>
			  </tr>
			  </table>
			  
			  
			  
			  </form>
			  
			  
			  </td>
			  
			  
			  
			  
			  
			  </tr>
			  </table>
                
                
               
              </div>
                    
               
                
                
              
                
               
                
              
                
            </div>
			
            <div class="cleaner"></div>        
        
		</div>
		
		
    <div id="templatemo_content_wrapper_bottm"> </div>
   
		<div id="templatemo_footer">
		
            
       </div>
        
	</div> <!-- end of wrapper -->
</div> <!-- end of wrapper_outer -->

</body>
</html>
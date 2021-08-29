<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.awt.*" %>
<%@ page import="org.jfree.chart.ChartFactory" %>
<%@ page import="org.jfree.chart.ChartUtilities" %>
<%@ page import="org.jfree.chart.JFreeChart" %>
<%@ page import="org.jfree.chart.plot.PlotOrientation"%>
<%@ page import="org.jfree.data.*" %>
<%@ page import="org.jfree.data.jdbc.JDBCCategoryDataset"%>

<%

String name=(String)session.getAttribute("name");
String query="SELECT name,nof from timer ";
JDBCCategoryDataset dataset=new JDBCCategoryDataset("jdbc:mysql://localhost:3306/encryption","com.mysql.jdbc.Driver","root","admin");

dataset.executeQuery( query);
JFreeChart chart = ChartFactory .createBarChart3D("no of files", "filename", "filecost",dataset, PlotOrientation.VERTICAL, true, true, false);
                
try
{
ChartUtilities.saveChartAsJPEG(new File("E:/apache-tomcat-6.0.18/webapps/adaptive encryption/images/logotype1.jpg"), chart, 700, 300);

}
catch (IOException e)
{
System.out.println("Problem in creating chart.");
}
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
	border:1px solid #f9f7f7;
	
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
	background-color:#07b3c6;
		

}
.CSSTableGenerator td{
	vertical-align:middle;
		background:-o-linear-gradient(bottom, #d3ab08 5%, #07b3c6 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #d3ab08), color-stop(1, #07b3c6) ); 
	background:-moz-linear-gradient( center top, #d3ab08 5%, #07b3c6 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#d3ab08", endColorstr="#07b3c6");	background: -o-linear-gradient(top,#d3ab08,07b3c6);

	background-color:#d3ab08;

	border:1px solid #f9f7f7;
	border-width:0px 1px 1px 0px;
	text-align:center;
	padding:7px;
	font-size:19px;
	font-family:Arial;
	font-weight:normal;
	color:#000000;
}.CSSTableGenerator tr:last-child td{
	border-width:0px 1px 0px 0px;
}.CSSTableGenerator tr td:last-child{
	border-width:0px 0px 1px 0px;
}.CSSTableGenerator tr:last-child td:last-child{
	border-width:0px 0px 0px 0px;
}
.CSSTableGenerator tr:first-child td{
		background:-o-linear-gradient(bottom, #7a067a 5%, #969907 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #7a067a), color-stop(1, #969907) );
	background:-moz-linear-gradient( center top, #7a067a 5%, #969907 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#7a067a", endColorstr="#969907");	background: -o-linear-gradient(top,#7a067a,969907);

	background-color:#7a067a;
	border:0px solid #f9f7f7;
	text-align:center;
	border-width:0px 0px 1px 1px;
	font-size:14px;
	font-family:Arial;
	font-weight:bold;
	color:#ffffff;
}
.CSSTableGenerator tr:first-child:hover td{
	background:-o-linear-gradient(bottom, #7a067a 5%, #969907 100%);	background:-webkit-gradient( linear, left top, left bottom, color-stop(0.05, #7a067a), color-stop(1, #969907) );
	background:-moz-linear-gradient( center top, #7a067a 5%, #969907 100% );
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr="#7a067a", endColorstr="#969907");	background: -o-linear-gradient(top,#7a067a,969907);

	background-color:#7a067a;
}
.CSSTableGenerator tr:first-child td:first-child{
	border-width:0px 0px 1px 0px;
}
.CSSTableGenerator tr:first-child td:last-child{
	border-width:0px 0px 1px 1px;
}
</style>
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
               
			   <li><a href="owner.jsp">Back</a></li>
               
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
				String aa=(String)session.getAttribute("name");
				%>
        <div class="CSSTableGenerator">
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          </p>
         
		 
		 <table width="742" height="336" align="center"><tr><td><img src="images/logotype1.jpg"></td></tr></table>
               
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
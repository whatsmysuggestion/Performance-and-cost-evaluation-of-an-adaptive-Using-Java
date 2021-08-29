<%@ page import="java.sql.*,java.lang.*,databaseconnection.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page  import="java.awt.*" %>
<%@ page  import="java.io.*" %>
<%@ page  import="org.jfree.chart.*" %>
<%@ page  import="org.jfree.chart.axis.*" %>
<%@ page  import="org.jfree.chart.entity.*" %>
<%@ page  import="org.jfree.chart.labels.*" %>
<%@ page  import="org.jfree.chart.plot.*" %>
<%@ page  import="org.jfree.chart.renderer.category.*" %>
<%@ page  import="org.jfree.chart.urls.*" %>
<%@ page  import="org.jfree.data.category.*" %>
<%@ page  import="org.jfree.data.general.*" %>
<%
double count=0.0d,counta=0.0d;
String mylocation=(String)session.getAttribute("mylocation");
StringBuffer slocation=new StringBuffer();
StringBuffer pserver=new StringBuffer();
String tempserver[]=null;
String temp1[]=null;
String temp2[]=null;
String temp3[]=null;
String temploc[]=null;
String myserver=null;
  				double ans1=0.0d,ans2=0.0d,ans3=0.0d;

							Connection con1 = null;
							Statement st1 = null;
							ResultSet rs1=null;
							
							try{
								con1=databasecon.getconnection();
								st1 = con1.createStatement();
								String str1="select * from downs ";
								rs1=st1.executeQuery(str1);
								while(rs1.next()){
									count=Double.parseDouble(rs1.getString("totalprize"));
									count +=count;
										
								}
							}
							catch(Exception e1){
								out.println(e1.getMessage());
							}
							
							
							Statement st2 = null;
							ResultSet rs2=null;
							
							try{
								con1=databasecon.getconnection();
								st2 = con1.createStatement();
								String str2="select * from downs1 ";
								rs2=st2.executeQuery(str2);
								while(rs2.next()){
									counta=Double.parseDouble(rs2.getString("totalprize"));
									counta +=counta;
										
								}
							}
							catch(Exception e1){
								out.println(e1.getMessage());
							}
							
							
							ans1=(double)((double)(count));
							
							ans2=(double)((double)(counta));
							ans3=ans1+ans2;
							
%>
<%
			final double[][] data = new double[][]{{0},{0},{0}};
			
			data[0][0]=ans3;
			data[1][0]=ans1;
			data[2][0]=ans2;
			/*int i=0,j=0;
			for(i=0;i<2;i++){
				for(j=0;j<1;j++){
					if(j==0){
						data[i][j]=ans1;
					}
					if(j==1){
						data[i][j]=ans2;
					}
					
				}			
			}*/
			
            JFreeChart chart = null;
            BarRenderer renderer = null;
            CategoryPlot plot = null;

            final CategoryAxis categoryAxis = new CategoryAxis("Download files ");
            final ValueAxis valueAxis = new NumberAxis("File Size");
            renderer = new BarRenderer();
	
						final CategoryDataset dataset = DatasetUtilities.createCategoryDataset(
								"Number of files", "", data);
								plot = new CategoryPlot(dataset, categoryAxis, valueAxis,
						renderer);
						plot.setOrientation(PlotOrientation.VERTICAL);
				
            
            chart = new JFreeChart("Bothe Encrypted and Decrypted file prices", JFreeChart.DEFAULT_TITLE_FONT,
            plot, true);
            chart.setBackgroundPaint(new Color(67, 112, 190));
      
            try {
                final ChartRenderingInfo info = new ChartRenderingInfo
                (new StandardEntityCollection());
                final File file1 = new File("E:/apache-tomcat-6.0.18/webapps/adaptive encryption/images/barchart.png");
                ChartUtilities.saveChartAsPNG(file1, chart, 680, 400 , info);
            } catch (Exception e) {
                out.println(e);
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
                <li><a href="admin_page.jsp">Back</a></li>
              
               
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
            	
              
              
			  
			  <table align="center">
			  <tr><td><img src="images/barchart.png"></td></tr>
			 
			  
			  
			  
			  
			  </table>
              
                    
               
                
                
              
                
               
                
              
                
            </div>
			
            <div class="cleaner"></div>        
        
		</div>
		
		<div id="templatemo_content_wrapper_bottm"></div>
   
		<div id="templatemo_footer">
		
            
       </div>
        
	</div> <!-- end of wrapper -->
</div> <!-- end of wrapper_outer -->

</body>
</html>

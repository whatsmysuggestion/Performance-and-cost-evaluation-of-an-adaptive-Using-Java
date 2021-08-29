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
double count=0.0d,counta=0.0d,countb=0.0d;
String mylocation=(String)session.getAttribute("mylocation");
StringBuffer slocation=new StringBuffer();
StringBuffer pserver=new StringBuffer();
String tempserver[]=null;
String temp1[]=null;
String temp2[]=null;
String temp3[]=null;
String temploc[]=null;
String myserver=null;
  				double ans1=0.0d,ans2=0.0d,ans3=0.0d,ans4=0.0d;

							Connection con1 = null;
							Statement st1 = null;
							ResultSet rs1=null;
							
							try{
								con1=databasecon.getconnection();
								st1 = con1.createStatement();
								String str1="select * from timer ";
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
								String str2="select * from downs ";
								rs2=st2.executeQuery(str2);
								while(rs2.next()){
									counta=Double.parseDouble(rs2.getString("totalprize"));
									counta +=counta;
										
								}
							}
							catch(Exception e1){
								out.println(e1.getMessage());
							}
							Statement st3 = null;
							ResultSet rs3=null;
							
							try{
								con1=databasecon.getconnection();
								st3 = con1.createStatement();
								String str3="select * from downs1 ";
								rs3=st3.executeQuery(str3);
								while(rs3.next()){
									countb=Double.parseDouble(rs3.getString("totalprize"));
									countb +=countb;
										
								}
							}
							catch(Exception e1){
								out.println(e1.getMessage());
							}
							
							ans1=(double)((double)(count));
							
							ans2=(double)((double)(counta));
							ans3=(double)((double)(countb));
							ans4=ans1+ans2+ans3;
							
%>
<%
			final double[][] data = new double[][]{{0},{0},{0},{0}};
			
			data[0][0]=ans3;
			data[1][0]=ans1;
			data[2][0]=ans2;
			data[3][0]=ans3;
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

            final CategoryAxis categoryAxis = new CategoryAxis("size ");
            final ValueAxis valueAxis = new NumberAxis("files");
            renderer = new BarRenderer();
	
						final CategoryDataset dataset = DatasetUtilities.createCategoryDataset(
								"files", "", data);
								plot = new CategoryPlot(dataset, categoryAxis, valueAxis,
						renderer);
						plot.setOrientation(PlotOrientation.VERTICAL);
				
            
            chart = new JFreeChart("videos", JFreeChart.DEFAULT_TITLE_FONT,
            plot, true);
            chart.setBackgroundPaint(new Color(150, 180, 190));
      
            try {
                final ChartRenderingInfo info = new ChartRenderingInfo
                (new StandardEntityCollection());
                final File file1 = new File("E:/apache-tomcat-6.0.18/webapps/adaptive encryption/images/barchart.png");
                ChartUtilities.saveChartAsPNG(file1, chart, 600, 200, info);

            } catch (Exception e) {
                out.println(e);
            }
%>


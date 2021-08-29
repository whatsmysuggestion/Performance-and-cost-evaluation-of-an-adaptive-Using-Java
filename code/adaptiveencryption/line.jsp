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
String query="SELECT fname,totalprize from downs";
String query1="SELECT fname,totalprize from downs1";
JDBCCategoryDataset dataset=new JDBCCategoryDataset("jdbc:mysql://localhost:3306/encryption","com.mysql.jdbc.Driver","root","admin");
JDBCCategoryDataset dataset1=new JDBCCategoryDataset("jdbc:mysql://localhost:3306/encryption","com.mysql.jdbc.Driver","root","admin");

dataset.executeQuery( query);
dataset1.executeQuery( query1);
JFreeChart chart = ChartFactory.createLineChart("Videos", "Downloads", "count",dataset, PlotOrientation.VERTICAL, true, true, false);
 JFreeChart chart1 = ChartFactory.createLineChart("Videos", "Downloads", "count",dataset, PlotOrientation.VERTICAL, true, true, false);
               
try
{
ChartUtilities.saveChartAsJPEG(new File("E:/apache-tomcat-6.0.18/webapps/adaptive encryption/images/b.png"), chart, 700, 300);

}
catch (IOException e)
{
System.out.println("Problem in creating chart.");
}
%>
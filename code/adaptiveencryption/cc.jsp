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
JDBCCategoryDataset dataset=new JDBCCategoryDataset("jdbc:mysql://localhost:3306/encryption","com.mysql.jdbc.Driver","root","admin");

dataset.executeQuery( query);
JFreeChart chart = ChartFactory .createBarChart3D("no of files", "filename", "filecost",dataset, PlotOrientation.VERTICAL, true, true, false);
                
try
{
ChartUtilities.saveChartAsJPEG(new File("E:/apache-tomcat-6.0.18/webapps/adaptive encryption/images/logotype.jpg"), chart, 700, 300);

}
catch (IOException e)
{
System.out.println("Problem in creating chart.");
}
%>
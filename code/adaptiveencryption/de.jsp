<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">



<!-- Script by hscripts.com -->

<style>
.heading{ font-size:14px; font-family: arial, verdana, san-serif; 
		font-weight: bold; color: black;}
.subheading{ font-size:13px; font-family: arial, verdana, san-serif; 
		color: black;}

</style>

<script type="text/javascript">
var speeds = new Array(new Array("9.6","9.6"),new Array("14.4","14.4"),new Array("19.2","19.2"),new Array("28.8","28.8"),new Array("33.6","33.6"),new Array("56","56"),new Array("Single Channel ISDN(64) ","64"),new Array("Dual Channel ISDN(128)","128"),new Array("ADSL(384)","384"),new Array("S-HDSL(768)","768"),new Array("CDSL(1024)","1024"));
function compute(fsize, scale)
{
var size = parseFloat(fsize.size.value);
  for (var i = 1; i < 12; i++)
  {
    var time = size * scale * 8.192 / speeds[i - 1][1];
    var hours = Math.floor(time / 3600);
    var minutes = Math.floor((time % 3600) / 60);
    var seconds = Math.floor(time % 60);
    fsize[i + "hour"].value = hours;
    fsize[i + "minute"].value = minutes;
    fsize[i + "second"].value = seconds;
  }
}
</script>

<!-- Script by hscripts.com -->


</head>

<body>
<form>
<table border="4">
<tr bgcolor="#D3D3D3">
<td bgcolor="#D3D3D3">
<table><tr><td class=subheading>
Input File Size
<input type="text" name="size" size="5">
<input type="button" onClick="compute(this.form, 1)" value="KB">
<input type="button" onClick="compute(this.form, 1024)" value="MB">
</td>
<td colspan=2 class=heading><center>It will take</center>
<td align=right><a href="http://www.hscripts.com" style="color:#3D366F;text-decoration:none;font-size:13px;cursor:pointer">H</a></td>
</td>
</tr>
<tr bgcolor="D3D3D3">
<th class=heading>If your modem is</th>
<th class=heading>Hrs </th>
<th class=heading>Min</th>
<th class=heading>Sec</th>
</tr>
<script type="text/javascript">
for(var j=1 ;j<2;j++)
{
document.write("<tr class=subheading><td bgcolor='#fffffe'>"+speeds[j-1][0]+" Kb</td><td><input type='text' name='"+j+"hour' size='6'> </td><td><input type='text' name='"+j+"minute' size='6'> </td><td><input type='text' name='"+j+"second' size='6'></td></tr>");
}
</script>
</table>
</td></tr>
</table>
</form>

</body>
</html>

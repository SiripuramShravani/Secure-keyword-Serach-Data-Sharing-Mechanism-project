<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
    <%@page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
    <%@ page import="java.sql.*,java.lang.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream" %>
<%@ page import ="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
 <%@page import ="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Delegator</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-quicksand.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style20 {
	color: #FF0000;
	font-size: 16;
}
.style21 {font-size: 16px}
.style22 {
	color: #FFFF00;
	font-weight: bold;
}
.style23 {color: #FFFF00}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span>Secure Keyword Search and Data Sharing Mechanism for Cloud Computing
</span></a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="D_Main.jsp"><span>Home</span></a></li>
          <li><a href="D_Login.jsp"><span>Logout</span></a></li>		 
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="935" height="293" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="935" height="293" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="935" height="293" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Generate Clinical Report </span><span class="style38 style20"></span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="clr"></div>
          <div >
            <p align="justify"></p>
               <%			String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
try 
	{		
			
			String doname = (String)application.getAttribute("docname");
			String provider = request.getParameter("provider");
			String patient = request.getParameter("patient");
			String Role=(String)application.getAttribute("role");	
			
			String rle="Doctor";
			
			    //String query1="Select * from doctor where name='"+doname+"' and role='"+Role+"'"; 
            	//Statement st1=connection.createStatement();
            	//ResultSet rs1=st1.executeQuery(query1);
			  if(!Role.equals(rle))
			  { 
			  out.print("USER CAN'T GIVE CLINICAL REPORT");
			  }
			  
			   else  if(Role.equals(rle))
			  { 
			
			
			ResultSet rr=connection.createStatement().executeQuery("select * from key_request where  patient_name='"+patient+"' and provider='"+provider+"' and doctor='"+doname+"'");
			if(rr.next())
			{
			
			
			String query="Select *from patient_reports where patient='"+patient+"' and provider='"+provider+"' and doctor='"+doname+"' "; 
			Statement st=connection.createStatement();
			ResultSet rs=st.executeQuery(query);
			if ( rs.next() )
			{
				i=rs.getInt(1);
				s2=rs.getString(2);
				s3=rs.getString(3);
				s4=rs.getString(4);
				s5=rs.getString(5);
				s6=rs.getString(6);
				
					String keys = "ef50a0ef2c3e3a5f";
				byte[] keyValue = keys.getBytes();
				Key key = new SecretKeySpec(keyValue, "AES");
				Cipher c = Cipher.getInstance("AES");
				c.init(Cipher.DECRYPT_MODE, key);
				String decrypted_cont = new String(Base64.decode(s5.getBytes()));
				
				
				
				%>
				<form id="form1" name="form1" method="post" action="D_Generate_report1.jsp">
				<table width="583" height="249" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr>
				<td height="28" bgcolor="#FF0000"><div align="left" class="style22">Patient Name : </div></td>
				<td width="395"  ><%=s2%>
				</th>				</td>
				</tr>
				<tr>
                  <td height="28" bgcolor="#FF0000"><div align="left" class="style22">Provider Name : </div></td>
				  <td  ><%=s3%>
                      </th>                  </td>
				  </tr>
				<input type="hidden" name="id" value="<%=i%>" />
				<input type="hidden" name="patient" value="<%=s2%>" />
				<input type="hidden" name="provider" value="<%=s3%>" />
				<tr>
				<td height="147" bgcolor="#FF0000" ><div align="left" class="style22">Enter Treatment Details : </div></td>
				<td><textarea name="textarea" cols="45" placeholder="Enter Treatment Details" rows="8"><%=decrypted_cont%></textarea></td>
				</tr>
				<tr>
				<td height="46" bgcolor="#FF0000"><div align="left"><span class="style23"></span></div></td>
				<td><label>
				<input type="submit" name="Submit" value="Add " />
				</label>				</td>
				</tr>
				</table>
				</form>
				<%
			
			}
			else
			{
			
			%>
				<form id="form1" name="form1" method="post" action="D_Generate_report1.jsp">
				<table width="583" height="249" border="0" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td height="28" bgcolor="#FF0000"><div align="left" class="style23"><strong>Patient Name : </strong></div></td>
					<td width="395"  ><div align="left"><%=patient%></td>
				</tr>
				
				<tr>
                  <td height="28" bgcolor="#FF0000"><div align="left" class="style23"><strong>Provider Name : </strong></div></td>
				  <td  ><div align="left"><%=provider%> </div></td>
				</tr>
				
				<input type="hidden" name="id" value="<%=i%>" />
				<input type="hidden" name="patient" value="<%=patient%>" />
				<input type="hidden" name="provider" value="<%=provider%>" />
				<tr>
					<td height="147" bgcolor="#FF0000" ><div align="left" class="style23"><strong>Enter Report Details : </strong></div></td>
					<td><textarea name="textarea" cols="45" placeholder="Enter Clinical Report Details" rows="8"><%=s5%></textarea></td>
				</tr>
				
				<tr>
					<td height="46"><div align="left"></div></td>
					<td><label>
					<input type="submit" name="Submit" value="Add " />
					</label>				</td>
				</tr>
				</table>
				</form>
				<h3>
				  <%
			
			}
			}
			else
			{
				%>
				  <span class="style21"><br /><br />You Have Not Requested For Secret Key !! <a href="D_Request_key.jsp">Click Here</a> To Request <br /><br /></span>
				  <%
			}
				}
		connection.close();
	}
	catch(Exception e)
	{
	out.print(e);
	}
%>
            </h3>
                </h3>
				<p align="right"><a href="D_Main.jsp">Back</a></p>
          </div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star">Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="D_Main.jsp">&raquo; Home </a></li>
            <li><a href="D_Login.jsp">&raquo; Logout </a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf">&nbsp;</p>
      <p class="rf">&nbsp;</p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>

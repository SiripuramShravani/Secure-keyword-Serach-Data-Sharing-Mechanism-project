<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Patient</title>
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
.style36 {
	color: #FFFFFF;
	font-weight: bold;
}
.style39 {color: #FFFFFF}
.style40 {color: #FF0000}
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
          <li class="active"><a href="HSP_Main.jsp"><span>Home</span></a></li>
          <li><a href="HSP_Login.jsp"><span>Logout</span></a></li>		 
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
          <h2><span> Search Patient</span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div>
		               
						  
						 <form name="s" action="D_SearchPatient.jsp" method="post" >   
                <DIV STYLE="width:600px;">
                  <TABLE ALIGN="center" STYLE="margin:0 0 0 30px;">
                    <TR>
                      <TD width="174" bgcolor="#FF0000"><div align="center" class="header style7 style8">
                        <div align="right" class="style12">
                          <div align="center" class="style36">Enter keyword or Patient Name </div>
                        </div>
                      </div></TD>
                      <TD width="152" bgcolor="#FF0000">
                      <div align="left" class="style9"><INPUT TYPE="text" name="keyword" /></div></TD>
					  <TD width="155" bgcolor="#FF0000"><INPUT name="submit" TYPE="submit" STYLE="width:50px; height:25px;" VALUE="GO"/></TD>
                    </TR>
                    <TR>
                      <TD COLSPAN="3"><div class="style2">
                      </div></TD>
                    </TR>
                  </TABLE>
                </DIV>
                <P>&nbsp; </P>
</form>
		
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
				
<table width="612" border="1.5" style="border-collapse:collapse" cellpadding="0" cellspacing="0"  align="center">
                <%	  
			  
			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8,s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0;
try 
	{		
		
				%>
                <tr>
                  <td width="36" height="30" bgcolor="#FF0000"><div align="center" class="style39 style25 style24"><strong> ID </strong></div></td>
                  <td width="120" bgcolor="#FF0000"><div align="center" class="style39 style26"><strong>Patient Name </strong></div></td>
                  <td width="122" bgcolor="#FF0000"><div align="center" class="style39 style26"><strong>Provider Name </strong></div></td>
                  <td width="134" bgcolor="#FF0000"><div align="center" class="style39 style26"><strong>Hospital</strong></div></td>
                  <td width="95" bgcolor="#FF0000"><div align="center" class="style39 style26"><strong>Delegator</strong></div></td>
                  <td width="91" bgcolor="#FF0000"><div align="center" class="style39 style26"><strong>View </strong></div></td>
                </tr>
                <%
				
				  String input= request.getParameter("keyword");	
				  String keyword = input.toLowerCase();

				String query="Select *from patient_details  "; 
				Statement st=connection.createStatement();
				ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
				{
					i=rs.getInt(1);
					s2=rs.getString(2).toLowerCase(); // patient
					s3=rs.getString(17);
					s4=rs.getString(18);
					s5=rs.getString(11); // Desc
					s6=rs.getString(15);
					String keys = "ef50a0ef2c3e3a5f";
					byte[] keyValue = keys.getBytes();
					Key key = new SecretKeySpec(keyValue, "AES");
					Cipher c = Cipher.getInstance("AES");
					c.init(Cipher.DECRYPT_MODE, key);
					String dt1 = new String(Base64.decode(s3.getBytes()));
					String desc = new String(Base64.decode(s5.getBytes()));
					
					String desc1=desc.toLowerCase();
					
					if ( s2.contains(keyword) || desc.contains(keyword))
					 {
					%>
                <tr>
                  <td height="28"><div align="center" class="style40"><%=i%></div></td>
                  <td><div align="center" class="style40"><%=s2%></div></td>
                  <td><div align="center" class="style40"><%=s6%></div></td>
                  <td><div align="center" class="style40"><%=s3%></div></td>
                  <td><div align="center" class="style40"><%=s4%></div></td>
                  <td><div align="center" class="style40"><a href="D_SearchPatient1.jsp?fname=<%=s2%>">View More..</a></div></td>
                </tr>
                <%}
			  
				}
	connection.close();
	}
	catch(Exception e)
	{
	out.println(e.getMessage());
	}
%>
              </table>
		  
		  
						  
						  
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
            <li><a href="HSP_Main.jsp">&raquo; Home </a></li>
            <li><a href="HSP_Login.jsp">&raquo; Logout </a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div>
</body>
</html>

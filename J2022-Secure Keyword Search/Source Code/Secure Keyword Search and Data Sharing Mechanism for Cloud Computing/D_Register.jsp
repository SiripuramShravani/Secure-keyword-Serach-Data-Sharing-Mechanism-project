<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
          <li><a href="index.html"><span>Home </span></a></li>
          <li><a href="HS_Login.jsp"><span>Cloud Server </span></a></li>
          <li><a href="HSP_Login.jsp"><span>Data Owner</span></a></li>
          <li class="active"><a href="D_Login.jsp"><span>Delegator</span></a></li>
          <li><a href="HK_Login.jsp"><span>Delgatee</span></a></li>
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
          <h2><span>Delegator Register </span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div>
            <p align="justify">&nbsp;</p>
            <form action="D_RegisterAuthentication.jsp" method="post" id="" enctype="multipart/form-data">
              <label for="name"> </label>
              <table width="590" height="524" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="259" scope="row"><div align="left"><strong> Name (required) : </strong></div></td>
                  <td width="343"><input id="name" name="userid" class="text" /></td>
                </tr>
                <tr>
                  <td ><div align="left"><strong>Password (required) : </strong></div></td>
                  <td><input type="password" id="password" name="pass" class="text" /></td>
                </tr>
                <tr>
                  <td scope="row"><div align="left"><strong>Select Role  (required) : </strong></div></td>
                  <td><label>
                    <select name="role">
                      <option>-Select-</option>
                      <option>Doctor</option>
                      <option>Nurse</option>
                      <option>User</option>
                    </select>
                  </label></td>
                </tr>
                <tr>
                  <td scope="row"><div align="left"><strong>Enter Hospital  (required) : </strong></div></td>
                  <td><input id="hospital" name="hospital" class="text" /></td>
                </tr>
                <tr>
                  <td scope="row"><div align="left"><strong>Email Address (required) : </strong></div></td>
                  <td><input id="email" name="email" class="text" /></td>
                </tr>
                <tr>
                  <td scope="row"><div align="left"><strong>Mobile Number (required) : </strong></div></td>
                  <td><input id="mobile" name="mobile" class="text" /></td>
                </tr>
                <tr>
                  <td scope="row"><strong>
                    <label for="label"> </label>
                    <label for="label">
                    </strong>
                    <div align="left"><strong>Your Address : </strong></div>
                    <strong>
                    </label>
                    </strong></td>
                  <td><textarea name="address" cols="45" id="address"></textarea></td>
                </tr>
                <tr>
                  <td scope="row"><strong>
                    <label for="label"> </label>
                    <label for="label">
                    </strong>
                    <div align="left"><strong>Date of Birth (required) : </strong></div>
                    <strong>
                    </label>
                    </strong></td>
                  <td><input id="dob" name="dob" class="text" /></td>
                </tr>
                <tr>
                  <td scope="row"><div align="left"><strong>Select Gender (required) : </strong></div></td>
                  <td><select id="s1" name="gender" class="text">
                      <option>-Select-</option>
                      <option>Male</option>
                      <option>Female</option>
                  </select></td>
                </tr>
                <tr>
                  <td scope="row"><strong>
                    <label for="label"> </label>
                    <label for="label">
                    </strong>
                    <div align="left"><strong>Enter Pincode (required) : </strong></div>
                    <strong>
                    </label>
                    </strong></td>
                  <td><input id="pincode" name="pincode" class="text" /></td>
                </tr>
                <tr>
                  <td scope="row"><strong>
                    <label for="location"> </label>
                    <label for="location">
                    </strong>
                    <div align="left"><strong>Enter Location (required) : </strong></div>
                    <strong>
                    </label>
                    </strong></td>
                  <td><input id="loc" name="location" class="text" /></td>
                </tr>
                <tr>
                  <td scope="row"><strong>
                    <label for="label"> </label>
                    <label for="label">
                    </strong>
                    <div align="left"><strong>Select Profile Picture (required) : </strong></div>
                    <strong>
                    </label>
                    </strong></td>
                  <td><input type="file" id="pic" name="pic" class="text" /></td>
                </tr>
                <tr>
                  <td height="79" scope="row">&nbsp;</td>
                  <td><input name="submit" type="submit" value="REGISTER" /></td>
                </tr>
              </table>
              <p align="right"><a href="P_Login.jsp">Back</a></p>
            </form>
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
            <li><a href="HK_Login.jsp">&raquo; Delgatee </a></li>
            <li><a href="D_Login.jsp">&raquo; Delegator</a></li>
            <li><a href="HS_Login.jsp">&raquo; Cloud Server </a></li>
            <li><a href="HSP_Login.jsp">&raquo; Data Owner</a></li>
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

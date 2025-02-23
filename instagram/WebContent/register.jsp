<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>user registration page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-900.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style2 {color: #0099FF}
.style3 {
	font-size: 36px;
	font-weight: bold;
}
.style4 {color: #6666FF}
.style9 {color: #FFFFFF; font-weight: bold; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
  
    <div class="header_resize">
	 <div class="logo">
    
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="userlogin.jsp"><span>User</span></a></li>
		   <li class="active"><a href="register.jsp"><span>Register</span></a></li>
          <li><a href="adminlogin.jsp"><span>Instagram Server</span></a></li>
         
        </ul>
      </div>
         <h1 class="style2">Filtering Instagram hashtags through crowdtagging and the HITS algorithm</h1>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="934" height="307" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="934" height="307" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="934" height="307" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <p class="infopost style3"> User Registration Form </p>
          <div class="clr"></div>
          <p>&nbsp;</p>
          <div class="img"><img src="images/img2.jpg" width="177" height="213" alt="" class="fl" /></div>
		
          <div class="post_content">
            <p align="justify">   <form action="insertdata.jsp" method="post" id="" enctype="multipart/form-data">
					  <table width="421">
                       <tr>
                          <td height="43" bgcolor="#FF0000"><span class="style9">Select Your Country </span></td>
                          <td><select id="s1" name="grp" style="width:224px;" class="text">
                    <option>--Select--</option>
                    <option>India</option>
                    <option>America</option>
					<option>Canada</option>
					<option>Bangkok</option>
					<option>South Africa</option>
					<option>Cario</option>
					<option>Kabul</option>
					<option>Brasilia</option>
					<option>Dhaka</option>
                  </select></td>
                        </tr>
					    <tr>
                          <td width="191" height="43" bgcolor="#FF0000"><span class="style9">User Name (required)</span></td>
                          <td width="218"><input id="name" name="userid" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43" bgcolor="#FF0000"><span class="style9">Password (required)</span></td>
                          <td><input type="password" id="password" name="pass" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43" bgcolor="#FF0000"><span class="style9">Email Address (required)</span></td>
                          <td><input id="email" name="email" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43" bgcolor="#FF0000"><span class="style9">Mobile Number (required)</span></td>
                          <td><input id="mobile" name="mobile" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43" bgcolor="#FF0000"><span class="style9">Date of Birth (required)</span></td>
                          <td><input id="dob" name="dob" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43" bgcolor="#FF0000"><span class="style9">Select Gender (required)</span></td>
                          <td><select id="s1" name="gender" style="width:170px;" class="text">
                            <option>--Select--</option>
                            <option>MALE</option>
                            <option>FEMALE</option>
                          </select></td>
                        </tr>
                        <tr>
                          <td height="65" bgcolor="#FF0000"><span class="style9">Address</span></td>
                          <td><textarea id="address" name="address" rows="3" cols="21"></textarea></td>
                        </tr>
                        <tr>
                          <td height="43" bgcolor="#FF0000"><span class="style9">Enter Pincode (required)</span></td>
                          <td><input id="pincode" name="pincode" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43" bgcolor="#FF0000"><span class="style9">Select Profile Picture(required) </span></td>
                          <td><input type="file" id="pic" name="pic" class="text" /></td>
                        </tr>
                        <tr>
                          <td height="43" rowspan="3">
                            <p>&nbsp;</p></td>
                          <td align="left" valign="middle"> <p>&nbsp;
                            </p>
                            <p>
                              <input name="submit" type="submit" value="REGISTER" />
                            </p>
                            <div align="right">
                            <p align="right"><a href="userlogin.jsp" class="style4">Back</a></p>
                          </div></td>
                        </tr>
              </table>
            </form></p>
           
          </div>
        
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
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
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="index.html">Home</a></li>
            <li><a href="userlogin.jsp">User</a></li>
            <li><a href="adminlogin.jsp">Instagram Server</a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <p class="rf">&nbsp;</p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>

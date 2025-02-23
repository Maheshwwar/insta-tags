<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Instagram User Main</title>
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
.style4 {color: #FF0000}
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
	  <%String user=(String)application.getAttribute("user");%>
        <ul>
          <li><a href="usermain.jsp"><span>Home</span></a></li>
          <li><a href="#"><span><%=user%></span></a></li>
          <li><a href="userlogin.jsp"><span>Logout</span></a></li>
         
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
          <p class="infopost style3"><span class="style4">Welcome to User ::</span>  <%=application.getAttribute("user") %></p>
          <div class="clr"></div>
          <p align="justify"><img src="images/User.jpg" width="583" height="413" /></p>
          <div class="img"></div>
		
          </div>
        <div class="article"></div>
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
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="usermain.jsp">Home</a></li>
            <li><a href="myprofile.jsp">View Profile</a> </li>
            <li><a href="searchinterfrnds.jsp">Search  Friends</a></li>
            <li><a href="frndrequests.jsp">View Friend Requests</a></li>
            <li><a href="addimages.jsp">Add Image</a></li>
			  <li><a href="search_allgrpimgs.jsp">Search Images</a></li>
            <li><a href="myimages.jsp">View My Images</a></li>
			<li><a href="u_Friends_Images.jsp">View Friends Images</a></li>
            <li><a href="viewrecommends.jsp">View Image Recommends</a> </li>
		   <li><a href="U_View_All_Reviews.jsp">View Friends or Others Reviews On Images </a> </li>
            <li><a href="userlogin.jsp">Logout</a></li>
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

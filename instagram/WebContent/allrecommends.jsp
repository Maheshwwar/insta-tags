<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>all recommends images</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="style1.css" rel="stylesheet" type="text/css" />
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
.style7 {font-size: 30px}
.style9 {color: #FF3300}
.style10 {color: #00CC66}
.style11 {color: #FF0000}
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
	  <%String admin=(String)application.getAttribute("admin");
	 
	  %>
        <ul>
          <li><a href="adminmain.jsp"><span>Home</span></a></li>
          <li><a href="#"><span><%=admin%></span></a></li>
          <li><a href="adminlogin.jsp"><span>Logout</span></a></li>
         
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
          <p class="infopost style3 style7 style11">View All Recommended images !!! </p>
          <div class="clr"></div>
          <p>
	     <table >
        <%@ include file="connect.jsp" %>
	<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
		<%
	
    
						String s1,s3,s4,imgid;
						int i=0,s2;
						
						
						try 
						{	
							ArrayList al=new ArrayList();
							String sql="select distinct(imgid) from recommends"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(sql);
					   		while(rs.next())
							{
								imgid=rs.getString(1);
							
							
						   	String sql1="select id,imgname,rank from images where id='"+imgid+"'"; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(sql1);
					   		if(rs1.next())
					   		{
								i=rs1.getInt(1);
								s1=rs1.getString(2);
								s2=rs1.getInt(3);
								al.add(s1);
								
								
					%>
					
					 <figure>
				<img height="100" width="130" src="profile_pic.jsp?id=<%=i%>&type=<%="image"%>" />	
				
				 <div id="container">
				
				 <figcaption>
				 <h3><span class="style10">Name:</span> <%=s1%></h3>
				 <h3><span class="style10">Rank:</span> <%=s2%></h3>
				  <a href="imgdetails1.jsp?id=<%=i%>&imgid=<%=imgid%>">View Details</a>
						
				 </figcaption>
				 </div>	
		    </figure>  
		
            <%
						
			}}
			if(al.isEmpty())
			{
				%>
				<h2 class="style9">No Results Found</h2>
				<%
			}
					
					connection.close();
					
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
	 </table>
		  </p>
          <div class="img"></div>
		
        </div>
        <div class="article">
          <p align="right"><a href="adminmain.jsp">Back</a></p>
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
            <li><a href="adminmain.jsp">Home</a></li>
            <li><a href="adminlogin.jsp">Logout</a></li>
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

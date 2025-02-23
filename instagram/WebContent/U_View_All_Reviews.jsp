<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Image Reviews</title>
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
	color: #FF0000;
}
.style7 {color: #FFFFFF}
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
          <li><a href="adminmain.jsp"><span>Home</span></a></li>
          <li><a href="#"><span><%=user%></span></a></li>
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
	
          <p class="infopost style3"> View All Image Reviews!!! </p>
          <div class="clr"></div>
          <p>
		  <table width="677" border="3" align="left"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
            <tr>
              <td  width="96" height="31" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7 style11 style10"><strong>Id</strong></div></td>
			  
			  <td  width="77" height="31" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7 style11 style10"><strong>Image Name </strong></div></td>
              <td  width="117" height="31" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7 style11 style10"><strong>Review</strong></div></td>
      
	  
	          <td  width="117" height="31" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7 style11 style10"><strong>Reviewed User Name</strong></div></td>
			          <td  width="117" height="31" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7 style11 style10"><strong>Review Date and Time</strong></div></td>
      
            </tr>
            <%@ include file="connect.jsp" %>
            <%
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s31="",str1="#";

int i=0,j=0,m=0;
try 
{
	ArrayList al=new ArrayList();
	String query="select * from reviews where uname!='"+user+"' "; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		s1=rs.getString(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4); // user
		s5=rs.getString(5);
		
		
			
			%>
            <tr>
			<td  width="87" align="center" valign="middle" ><%out.println(s1);%></td>
			 <td  width="87" align="center" valign="middle" ><%out.println(s2);%></td>
			 
              <%
			  
			   java.util.regex.Pattern pattern=java.util.regex.Pattern.compile(str1+"[a-z,A-Z]*",java.util.regex.Pattern.CASE_INSENSITIVE);
			  java.util.regex.Matcher matcher=pattern.matcher(s3);
			  while(matcher.find())
			  {
			  for(j=0;j<=matcher.groupCount();j++)
			  {
		
			  String res=matcher.group(j);
			  
			  res=res.startsWith("#")?res.substring(1):res;
	  			al.add(res);
			  s31=s3.replace(matcher.group(j),"<b><i><u><a href=U_View_All_Reviews1.jsp?key="+res+"&amp;tname="+s2+">"+matcher.group(j)+"</a></big></u></i></b>");			
			  }
			  }
			  %>
			      </div></td><td  width="126" align="center" valign="middle"><div align="center"><%out.println(s31);%></div></td>
			  
			  
			
			   <td  width="77" height="56" align="center" valign="middle" ><%out.println(s4);%></td>
			    <td  width="77" height="56" align="center" valign="middle" ><%out.println(s5);%></td>
			 
            </tr>
            <%}
						
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
         <p align="right"><a href="usermain.jsp">Back</a></p>
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

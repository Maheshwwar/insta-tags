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
		  <table width="642" align="left"  cellpadding="0" cellspacing="0"  >
        <%@ include file="connect.jsp" %>
	
		<%
	
    
	String s1,s2,s3,s4,result="",s0;
	int i=0,j=0,m=0,count=0;
	
	try 
	{
	
	
	String key=request.getParameter("key");
	String tname=request.getParameter("tname");
	
	ArrayList al=new ArrayList();
	ArrayList al1=new ArrayList();
	String query="select * from reviews where iname like'"+tname+"%' and  uname!='"+user+"'"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		s0=rs.getString(1); // id
		s1=rs.getString(2); // Image Name
		s2=rs.getString(3); //Review
		s3=rs.getString(4); // Username
		s4=rs.getString(5); // Date and Time
		
	
		if(m==0){
		%>
		
				<tr>
				 <td  width="109" height="50" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7 style5"><strong>Image Name </strong></div></td>
				  <td  width="97" height="50" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7 style5"><strong>Review</strong></div></td>
				  <td   width="206" height="50" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7 style5"><strong>Reviewed User </strong></div></td>
				  <td  width="126" height="50" align="center" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7 style5"><strong>Date</strong> and Time </div></td>
				</tr>
					<%}%>
			<tr>
			  <td  width="97" height="50" align="center" valign="middle" style="color:#000000;"><div align="center"><%out.println(s1);%></div></td>
			  <td  width="97" height="50" align="center" valign="middle" style="color:#000000;"><div align="center"><%out.println(s2);%></div></td>	
			  <td  width="206" height="50" align="center" valign="middle" style="color:#000000;"><div align="center"><%
			  
			  java.util.regex.Pattern pattern=java.util.regex.Pattern.compile("#"+key+"[a-z,A-Z]*",java.util.regex.Pattern.CASE_INSENSITIVE);
			  java.util.regex.Matcher matcher=pattern.matcher(s3);
			  
			  while(matcher.find()){
			  for(j=0;j<=matcher.groupCount();j++)
			  {
			 	
			  String str=matcher.group(j);
			  s3=s3.replace(matcher.group(j),"<b><i><u><big><font>"+str+"</font></big></u></i></b>");
			  count=count+1;
			  al.add(matcher.group(j));
			  }
			  }
			
			  
			  			  
			  out.println(s3);%></div></td>
			  <td  width="126" align="center" valign="middle" style="color:#000000;"><div align="center"><%out.println(s4);%></div></td>
			</tr>
					
					<%m=2;
					java.util.regex.Pattern pattern1=java.util.regex.Pattern.compile("#[a-z,A-Z]*",java.util.regex.Pattern.CASE_INSENSITIVE);
			  java.util.regex.Matcher matcher1=pattern1.matcher(s3);
			  
			  while(matcher1.find())
			  {
			  for(j=0;j<=matcher1.groupCount();j++)
			  {
			 	
			  al1.add(matcher1.group(j));
			  }
			  }
			 
						 
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

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>image details</title>
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
.style7 {font-weight: bold}
.style9 {color: #339933; font-weight: bold; }
.style15 {font-weight: bold; color: #FF9933; }
.style16 {color: #FF9933}
.style17 {color: #FF0000}
.style18 {color: #FF0000; font-weight: bold; }
.style20 {font-size: 14px; font-weight: bold; color: #FFFFFF; }
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
	  <%String admin=(String)application.getAttribute("admin");%>
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
          <p class="infopost style3">Image Details </p>
          <div class="clr"></div>
          <p>
		  <table width="620" border="1.5"  cellpadding="0" cellspacing="0"  >
  <%@ page	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page
	import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
                        <%@ include file="connect.jsp" %>
                        <%@ page import="org.bouncycastle.util.encoders.Base64"%>
                        
                        <%
						String id = request.getParameter("id");
						String imgid = request.getParameter("imgid");
						String s1,s2,s3,s4,s5,s6,s7,s8,u1,u2,u3,u4,u5,u6;
						int i=0,j=0,k=0;
						try 
						{
						   	String query="select * from images where id='"+id+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(7);
								s7=rs.getString(8);
								s8=rs.getString(9);
								int rank=rs.getInt(11);
								
								String keys = "ef50a0ef2c3e3a5f";
								byte[] keyValue1 = keys.getBytes();
								Key key1 = new SecretKeySpec(keyValue1, "AES");
								Cipher c1 = Cipher.getInstance("AES");
								c1.init(Cipher.DECRYPT_MODE, key1);
								String ds4 = new String(Base64.decode(s4.getBytes())); 
								String ds5 = new String(Base64.decode(s5.getBytes()));
								String ds6 = new String(Base64.decode(s6.getBytes()));
								String ds7 = new String(Base64.decode(s7.getBytes()));
								
								

					%>
					<!-- <form action="editimg.jsp?id=<%=i%>" method="post">-->
                        <tr>
                        <td width="238" rowspan="10"><div class="style7" style="margin:10px 13px 10px 13px;" >
                    <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="image"%>" style="width:200px; height:200px;"/></div></td>
					    </tr>
                        <tr>
						  <td  width="179" height="48" align="center" valign="middle" style="color: #00CC99;"><div class="style9 style17">Uploaded User</div></td>
						  <td  width="195" valign="middle" align="center" height="48" ><div><%out.println(s1);%></div></td>
					    </tr>
                        <tr>
					      <td  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><div class="style18">User Group</div></td>
					      <td  width="195" valign="middle" align="center" height="48" ><div><%out.println(s2);%></div></td>
					    </tr>
                        <tr>
						  <td  width="179" valign="middle" align="center" height="48" style="color: #00CC99;"><span class="style18">Image Name</span></td>
						  <td  width="195" valign="middle" align="center" height="48" ><%out.println(s3);%></td>
					    </tr>
                        <tr>
						  <td  width="179" valign="middle" align="center" height="51" style="color: #00CC99;"><span class="style18">Tag Name</span></td>
						  <td  width="195" valign="middle" align="center" height="51"><%out.println(ds4);%></td>
					    </tr>
						 <tr>
							  <td  width="179" valign="middle" align="center" height="51" style="color: #00CC99;"><span class="style18">Use</span></td>
						   <td  width="195" valign="middle" align="center" height="51"><%out.println(ds5);%></td>
					    </tr>
                        <tr>
						  <td  width="179" valign="middle" align="center" height="51" style="color: #00CC99;"><span class="style18">Color</span></td>
						  <td  width="195" valign="middle" align="center" height="51"><%out.println(ds6);%></td>
					    </tr>
						 <tr>
						  <td  width="179" valign="middle" align="center" height="51" style="color: #00CC99;"><span class="style18">Description</span></td>
						  <td  width="195" valign="middle" align="center" height="51"><%out.println(ds7);%></td>
					    </tr>
						 <tr>
						  <td  width="179" valign="middle" align="center" height="51" style="color: #00CC99;"><span class="style18">Date </span></td>
						  <td  width="195" valign="middle" align="center" height="51"><%out.println(s8);%></td>
					    </tr>
						 <tr>
						  <td  width="179" valign="middle" align="center" height="51" style="color: #00CC99;"><span class="style18">Rank </span></td>
						  <td  width="195" valign="middle" align="center" height="51"><%out.println(rank);%></td>
					    </tr>
						<%}%>
		  </table>
						<p>&nbsp;</p>
						<table>
						<tr>
						<td align="center" valign="middle" bgcolor="#FF0000"><span class="style20">Recommend By </span></td>
						<td align="center" valign="middle" bgcolor="#FF0000"><span class="style20">Username</span></td>
						
						<td align="center" valign="middle" bgcolor="#FF0000"><span class="style20">Recommend to </span></td>
						<td align="center" valign="middle" bgcolor="#FF0000"><span class="style20">Username</span></td>
						<td align="center" valign="middle" bgcolor="#FF0000"><span class="style20">Country</span></td>
						<td align="center" valign="middle" bgcolor="#FF0000"><span class="style20">Date</span></td>
						</tr>
                        <%
						String query1="select * from recommends where imgid='"+imgid+"'"; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						while ( rs1.next())
						{ 
								u1=rs1.getString(2);
								u2=rs1.getString(3);
								u3=rs1.getString(4);
								u4=rs1.getString(5);
								u5=rs1.getString(7);
						
								String query3="select id from user where username='"+u1+"' "; 
								Statement st3=connection.createStatement();
								ResultSet rs3=st3.executeQuery(query3);
								if(rs3.next())
								{
										j=rs3.getInt(1);
										%>
						 <tr>
						 <td width="109" align="center" valign="middle"><div class="style15" style="margin:10px 13px 10px 13px;" >
                    <input  name="image" type="image" src="profile_pic.jsp?id=<%=j%>&type=<%="user"%>" style="width:50px; height:50px;"/></div><span class="style16 style17"><%=u1%></span></td>
						  <td  width="81" valign="middle" align="center" height="51" style="color: #00CC99;"><span class="style17"><strong><%=u1%><span class="style16 style17"></span></strong></span></td>
						  
					    
										
										<%
								}
								String query2="select id from user where username='"+u3+"' "; 
								Statement st2=connection.createStatement();
								ResultSet rs2=st2.executeQuery(query2);
								if(rs2.next())
								{
								k=rs2.getInt(1);
								%>
								<td width="109" align="center" valign="middle"><div class="style17 style15" style="margin:10px 13px 10px 13px;" ><strong>
                                <input  name="image" type="image" src="profile_pic.jsp?id=<%=k%>&type=<%="user"%>" style="width:50px; height:50px;"/>
						   </strong><%=u3%></div></td>
						  <td  width="73" valign="middle" align="center" height="51" style="color: #00CC99;"><span class="style17"><strong><span class="style16 style17"><%=u3%></span></strong></span></td>
						  <td  width="65" valign="middle" align="center" height="51"><span class="style17"><strong><span class="style16 style17"><%=u4%></span></strong></span></td>
						   <td  width="98" valign="middle" align="center" height="51"><span class="style17"><strong><span class="style16 style17"><%=u5%></span></strong></span></td>
						  </tr>
								<%
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
		
		
          <div align="right"><a href="allrecommends.jsp">Back</a>
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

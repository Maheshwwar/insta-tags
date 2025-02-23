<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date,java.lang.*" %>
<%@ page import="java.text.SimpleDateFormat, java.util.Date"%>
<title>updating rank</title>

<%
		
	
	try{
		
		String key = request.getParameter("key");
		String stype=request.getParameter("stype");
		String user=(String)application.getAttribute("user");
	  String grp=(String)application.getAttribute("grp");
		SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		Date now = new Date();
		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt=strDate+" "+strTime;

		
				
				if(stype.equalsIgnoreCase("inter"))
				{
				response.sendRedirect("searchimgresults1.jsp?key="+key+"");
				}
		
		
		connection.close();
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>


			
			
			
			
			
			
			
			
			
			
			
			
			
		
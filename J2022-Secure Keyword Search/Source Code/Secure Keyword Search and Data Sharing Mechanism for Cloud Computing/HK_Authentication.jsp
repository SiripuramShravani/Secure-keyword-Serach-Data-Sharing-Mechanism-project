<title>Authentication Page</title>


<%@ include file="connect.jsp"%>

<%
	
try {
		
		String name = request.getParameter("userid");
	String pass = request.getParameter("pass");
	
		String sql = "SELECT * FROM hkas where name='" + name+ "' and pass='" + pass + "' ";
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		if (rs.next()==true)
		{
			response.sendRedirect("HK_Main.jsp");
		}
		 else 
		{
			response.sendRedirect("wronglogin.html");
		}
	}
	catch (Exception e)
	{
		//out.print(e);
	}%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ page import = "java.util.*" %>
 <%@ page import = "java.sql.*" %>
 <%@ page import = "com.csm.dao.DietManager"%>
 <%@ page import = "com.csm.Entity.Diet" %>
 <%@ page import = "com.csm.DBManager" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
	String dt = request.getParameter("diet_type");
	int dfpd = Integer.parseInt(request.getParameter("feeds_per_day"));

	
	DBManager dbMgr=new DBManager();
	dbMgr.getConnection();
	Diet d = new Diet(dt,dfpd);
	
	DietManager dMgr= new DietManager();
	int rowAffected=-1;
			
	rowAffected = dMgr.insert(d);
	
	
	if(rowAffected==1)
	out.println("Record inserted successfully");
	response.sendRedirect("thanks.html");
	
	
	
	
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}




%>
<%

%>
</body>
</html>
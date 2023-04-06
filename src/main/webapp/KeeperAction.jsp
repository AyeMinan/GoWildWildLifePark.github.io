<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%@ page import = "java.util.*" %>
 <%@ page import = "java.sql.*" %>
 <%@ page import = "java.text.SimpleDateFormat" %>
 <%@ page import = "java.util.Date" %>
 <%@ page import = "com.csm.dao.KeeperManager"%>
 <%@ page import = "com.csm.Entity.Keeper" %>
 <%@ page import = "com.csm.DBManager" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
	String kr = request.getParameter("keeper_rank");
	String kn = request.getParameter("keeper_name");
	SimpleDateFormat kd = new SimpleDateFormat("yyyy-mm-dd");
	
	Date kdob = kd.parse(request.getParameter("date_of_birth"));
	
	DBManager dbMgr=new DBManager();
	dbMgr.getConnection();
	Keeper k= new Keeper(kr,kn,kdob);
	
	KeeperManager kMgr= new KeeperManager();
	int rowAffected=-1;
			
	rowAffected = kMgr.insert(k);
	
	
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
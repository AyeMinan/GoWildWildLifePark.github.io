<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
             <%@ page import = "java.util.*" %>
 <%@ page import = "java.sql.*" %>
 <%@ page import = "com.csm.dao.SpeciesManager"%>
 <%@ page import = "com.csm.Entity.Species" %>
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
	String sg = request.getParameter("species group");
	String sls = request.getParameter("life style");
	String scs = request.getParameter("cs");
	String st = request.getParameter("species type");

	
	DBManager dbMgr=new DBManager();
	dbMgr.getConnection();
	Species s= new Species(sg,sls,scs,st);
	
	SpeciesManager sMgr= new SpeciesManager();
	int rowAffected=-1;
			
	rowAffected = sMgr.insert(s);
	
	
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
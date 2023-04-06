<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import = "java.util.*" %>
 <%@ page import = "java.sql.*" %>
 <%@ page import = "com.csm.dao.EnclosureManager"%>
 <%@ page import = "com.csm.Entity.Enclosure" %>
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
	String et = request.getParameter("enclosure type");
	String el = request.getParameter("location");

	
	DBManager dbMgr=new DBManager();
	dbMgr.getConnection();
	Enclosure k= new Enclosure(et,el);
	
	EnclosureManager eMgr= new EnclosureManager();
	int rowAffected=-1;
			
	rowAffected = eMgr.insert(k);
	
	
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
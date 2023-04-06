<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
             <%@ page import = "java.util.*" %>
 <%@ page import = "java.sql.*" %>
 <%@ page import = "com.csm.dao.AnimalManager"%>
 <%@ page import = "com.csm.Entity.Animal" %>
 <%@ page import = "com.csm.DBManager" %>
 <%@ page import = "java.time.Year" %>
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
	String an = request.getParameter("animal name");
	String ag = request.getParameter("animal gender");
	Year yr = Year.of(Integer.parseInt(request.getParameter("year arrived")));
	int kid = Integer.parseInt(request.getParameter("keeper id"));
	int did = Integer.parseInt(request.getParameter("diet id"));
	int sid = Integer.parseInt(request.getParameter("species id"));
	int eid = Integer.parseInt(request.getParameter("enclosure id"));

	
	DBManager dbMgr=new DBManager();
	dbMgr.getConnection();
	Animal a = new Animal(an,ag,yr,kid,did,sid,eid);
	
	AnimalManager dMgr= new AnimalManager();
	int rowAffected=-1;
			
	rowAffected = dMgr.insert(a);
	
	
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
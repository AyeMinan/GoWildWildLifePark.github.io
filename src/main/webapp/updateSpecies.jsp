<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
                 <%@ page import = "java.util.*" %>
 <%@ page import = "java.sql.*" %>
 <%@ page import = "java.util.ArrayList" %>
 <%@ page import = "com.csm.dao.SpeciesManager"%>
 <%@ page import = "com.csm.Entity.Species" %>
 <%@ page import = "com.csm.DBManager" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String sgp= request.getParameter("Species_Gp");
String sls= request.getParameter("Life_style");
String scs = request.getParameter("Conversational_status");
String st = request.getParameter("Species_type");
int sId = Integer.parseInt(request.getParameter("Species_Id"));


Species s = new Species(sId,sgp,sls,scs,st);
 
 SpeciesManager dbMgr= new SpeciesManager();
 
 int rowAffected=-1;
 rowAffected=dbMgr.updateSpecies(s);
 if(rowAffected==1)
	 response.sendRedirect("thanks.html");

%>

</body>
</html>
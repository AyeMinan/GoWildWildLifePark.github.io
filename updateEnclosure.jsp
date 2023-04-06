<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
                 <%@ page import = "java.util.*" %>
 <%@ page import = "java.sql.*" %>
 <%@ page import = "java.util.ArrayList" %>
 <%@ page import = "com.csm.dao.EnclosureManager"%>
 <%@ page import = "com.csm.Entity.Enclosure" %>
 <%@ page import = "com.csm.DBManager" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String etype= request.getParameter("Enclosure_type");
String el = request.getParameter("Location");
int eId = Integer.parseInt(request.getParameter("Enclosure_Id"));


 Enclosure e = new Enclosure(eId,etype,el);

 EnclosureManager dbMgr= new EnclosureManager();
 
 int rowAffected=-1;
 rowAffected=dbMgr.updateEnclosure(e);
 if(rowAffected==1)
	 response.sendRedirect("thanks.html");

%>

</body>
</html>
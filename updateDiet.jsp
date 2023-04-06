<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
             <%@ page import = "java.util.*" %>
 <%@ page import = "java.sql.*" %>
 <%@ page import = "java.util.ArrayList" %>
 <%@ page import = "com.csm.dao.DietManager"%>
 <%@ page import = "com.csm.Entity.Diet" %>
 <%@ page import = "com.csm.DBManager" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String dtype= request.getParameter("Diet_type");
int dFpd = Integer.parseInt(request.getParameter("Feeds_per_day"));
int dId = Integer.parseInt(request.getParameter("Diet_Id"));
out.println(dtype);
out.println(dFpd);

 Diet d = new Diet(dId,dtype,dFpd);
 
 DietManager dbMgr= new DietManager();
 
 int rowAffected=-1;
 rowAffected=dbMgr.updateDiet(d);
 if(rowAffected==1)
	 response.sendRedirect("thanks.html");

%>
</body>
</html>
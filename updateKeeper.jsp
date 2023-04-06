<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
                    <%@ page import = "java.util.*" %>
 <%@ page import = "java.sql.*" %>
 <%@ page import = "java.util.ArrayList" %>
 <%@ page import = "com.csm.dao.KeeperManager"%>
 <%@ page import = "com.csm.Entity.Keeper" %>
 <%@ page import = "com.csm.DBManager" %>
 <%@ page import = "java.text.SimpleDateFormat" %>
 <%@ page import = "java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String kr= request.getParameter("Keepers_Rank");
String kn = request.getParameter("Keepers_Name");
SimpleDateFormat kd = new SimpleDateFormat("yyyy-mm-dd");

Date kdob = kd.parse(request.getParameter("Date_of_Birth"));
int kId = Integer.parseInt(request.getParameter("Keepers_Id"));


 Keeper k = new Keeper(kId,kr,kn,kdob);

 KeeperManager dbMgr= new KeeperManager();
 
 int rowAffected=-1;
 rowAffected=dbMgr.updateKeeper(k);
 if(rowAffected==1)
	 response.sendRedirect("thanks.html");

%>

</body>
</html>
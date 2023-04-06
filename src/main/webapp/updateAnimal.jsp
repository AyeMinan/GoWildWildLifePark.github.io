<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
                 <%@ page import = "java.util.*" %>
 <%@ page import = "java.sql.*" %>
 <%@ page import = "java.util.ArrayList" %>
 <%@ page import = "com.csm.dao.AnimalManager"%>
 <%@ page import = "com.csm.Entity.Animal" %>
 <%@ page import = "com.csm.DBManager" %>
  <%@ page import = "java.time.Year" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int aId = Integer.parseInt(request.getParameter("Animal_Id"));
String an= request.getParameter("Animal_Name");
String ag= request.getParameter("Animal_Gender");
Year ayr = Year.of(Integer.parseInt(request.getParameter("Year_Arrived")));
int kId = Integer.parseInt(request.getParameter("Keepers_Id"));
int dId = Integer.parseInt(request.getParameter("Diet_Id"));
int sId = Integer.parseInt(request.getParameter("Species_Id"));
int eId = Integer.parseInt(request.getParameter("Enclosure_Id"));




Animal a = new Animal(aId,an,ag,ayr,kId,dId,sId,eId);
 
 AnimalManager dbMgr= new AnimalManager();
 
 int rowAffected=-1;
 rowAffected=dbMgr.updateAnimal(a);
 if(rowAffected==1)
	 response.sendRedirect("thanks.html");

%>

</body>
</html>
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
<title>Edit Diet</title>
</head>
<body>
<form method="post" action="updateDiet.jsp">
<%
String dietId = request.getParameter("id");
if(dietId == null){
out.println("Diet Id is not found");}
else{
int id = Integer.parseInt(dietId);
DietManager dbMgr = new DietManager();
try{
	Diet d = dbMgr.getById(id);
%>
	<input type="hidden" name="Diet_Id" value="<%=d.getDiet_Id() %>"/>
	<label for="Diet_type">Diet type</label>
	<input type="text" name="Diet_type" id="Diet_type" value="<%=d.getDiet_type() %>" required/>
	<label for="Feeds_per_day">Feeds per day</label>
	<input type="text" name="Feeds_per_day" id="Feeds_per_day" value="<%=d.getFeeds_per_day()%>"/>
	<input type="submit" value="Update"/></form>
<%
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
}



%>
</body>
</html>
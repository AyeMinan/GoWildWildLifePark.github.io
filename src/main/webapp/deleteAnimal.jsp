<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
                 <%@ page import = "java.util.*" %>
 <%@ page import = "java.sql.*" %>
 <%@ page import = "java.util.ArrayList" %>
 <%@ page import = "com.csm.dao.AnimalManager"%>
 <%@ page import = "com.csm.Entity.*" %>
 <%@ page import = "com.csm.DBManager" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int Animal_Id= Integer.parseInt(request.getParameter("id"));
AnimalManager dMgr = new AnimalManager();
int rowAffected;
try{	
	rowAffected = dMgr.deleteAnimal(Animal_Id);
	response.sendRedirect("thanks.html");
	
}catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

%>

</body>
</html>
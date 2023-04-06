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
<form method="post" action="updateAnimal.jsp">
<%
String animalId = request.getParameter("id");
if(animalId == null){
out.println("Animal Id is not found");}
else{
int id = Integer.parseInt(animalId);
AnimalManager dbMgr = new AnimalManager();
try{
	Animal a = dbMgr.getById(id);
	%>
	<input type="hidden" name="Animal_Id" value="<%=a.getAnimal_Id() %>"/>
	
	<label for="Animal Name">Animal Name:</label>
	<input type="text" name="Animal_Name" id="Animal_Name" value="<%=a.getAnimal_Name() %>" required/>
	
	<label for="Animal_Gender">Animal Gender:</label>
	<input type="text" name="Animal_Gender" id="Animal_Gender" value="<%=a.getAnimal_Gender()%>"/>
	
	
	<label for="Year arrived">Year arrived:</label>
	<input type="text" name="Year_Arrived" id="Year_Arrived" value="<%=a.getYear_arrived()%>"/>
	
	<label for="Keeper Id">Keeper Id:</label>
	<input type="text" name="Keepers_Id" id="Keepers_Id" value="<%=a.getKeepers_Id()%>"/>
	
	<label for="Diet Id">Diet Id:</label>
	<input type="text" name="Diet_Id" id="Diet_Id" value="<%=a.getDiet_Id()%>"/>
	
	<label for="Species Id">Species Id:</label>
	<input type="text" name="Species_Id" id="Species_Id" value="<%=a.getSpecies_Id()%>"/>
	
	<label for="Enclosure Id">Enclosure Id:</label>
	<input type="text" name="Enclosure_Id" id="Enclosure_Id" value="<%=a.getEnclosure_Id()%>"/>
	

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
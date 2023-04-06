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
<form method="post" action="updateSpecies.jsp">
<%
String speciesId = request.getParameter("id");
if(speciesId == null){
out.println("Species Id is not found");}
else{
int id = Integer.parseInt(speciesId);
SpeciesManager dbMgr = new SpeciesManager();
try{
	Species e = dbMgr.getById(id);
	%>
	<input type="hidden" name="Species_Id" value="<%=e.getSpecies_Id() %>"/>
	<label for="Species Gp">Species Group:</label>
	<input type="text" name="Species_Gp" id="Species_Gp" value="<%=e.getSpecies_Gp() %>" required/>
	<label for="Life style">Life style:</label>
	<input type="text" name="Life_style" id="Life_style" value="<%=e.getLife_style()%>"/>
	<label for="Conversational status">Conversational status:</label>
	<input type="text" name="Conversational_status" id="Conversational_status" value="<%=e.getConversational_status()%>"/>
	<label for="Species type">Species type:</label>
	<input type="text" name="Species_type" id="Species_type" value="<%=e.getSpecies_type()%>"/>
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
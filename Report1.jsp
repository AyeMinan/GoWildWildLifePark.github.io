<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "com.csm.dao.AnimalManager"%>
<%@ page import = "com.csm.Entity.Animal" %>
<%@ page import = "java.time.Year" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report 1</title>
<style>
table, td, th {
  border: 1px solid black;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th {
  height: 70px;
}
</style>
</head>
<body>
<%
try{
	
	AnimalManager aMgr = new AnimalManager();
	ArrayList<Animal> animals = aMgr.fetchDaveorTemi();


%>
<div class="table">
<h1>Report 1</h1>
<table id="main">
	<tr>
		<th>Animal ID</th>
		<th>Animal Name</th>
		<th>Animal Gender</th>
		<th>Year Arrived</th>
		<th>Keeper ID</th>
		<th>Keeper Name</th>
		
		
		
	</tr>
	<%for (Animal a : animals){
		%>
		<tr>
			<td> <%= a.getAnimal_Id() %></td>
			<td> <%= a.getAnimal_Name() %></td>
			<td> <%= a.getAnimal_Gender() %> </td>
			<td> <%= a.getYear_arrived()%></td>
			<td> <%= a.getKeepers_Id() %></td>
			<td> <%= a.getKeepers_name() %></td>
			
		</tr>
		<%
	}

	%>
	

</table>
</div>

</body>
</html>

<%} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

//<td><a href="edit_course.jsp?id=<%=course.getCourseId()
%>
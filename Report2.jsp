<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.*" %>
<%@ page import = "java.sql.*" %>
<%@ page import = "com.csm.dao.AnimalManager"%>
<%@ page import = "com.csm.Entity.Animal" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report 2</title>
</head>
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
<body>
<%
try{
	
	AnimalManager aMgr = new AnimalManager();
	ArrayList<Animal> animal = aMgr.fetchAnimalGroupByKeeperName();


%>
<div class="table">
<h1>Report 2</h1>
<table id="main">
	<tr>
		<th>Keeper Name</th>
		<th>Total Animal</th>	
			
		
	</tr>
	<%for (Animal a : animal){
		%>
		<tr>
			<td> <%= a.getKeepers_name() %></td>
			<td> <%= a.getTotalAnimal() %></td>
			
			
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
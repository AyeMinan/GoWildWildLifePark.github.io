<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import = "java.sql.*" %>
 <%@ page import = "java.util.ArrayList" %>
 <%@ page import = "com.csm.dao.AnimalManager"%>
 <%@ page import = "com.csm.Entity.Animal" %>
 <%@ page import = "com.csm.DBManager" %>
 <%@ page import = "java.time.Year" %>
 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Animal Listing Page</title>
<head>
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
</head>
<body>
<h1> Animal Information</h1>
<%


try {
	DBManager dbMgr = new DBManager();
	dbMgr.getConnection();
				
	AnimalManager dMgr = new AnimalManager();
	ArrayList<Animal> animal= dMgr.fetchAll();
%>			
	
    <table border="1">
        <tr>
            <th>Id</th>
            <th>Animal Name</th>
            <th>Animal Gender</th>
            <th>Year_arrived</th>
            <th>Keepers_Id</th>
            <th>Diet_Id</th>
            <th>Species_Id</th>
            <th>Enclosure_Id</th>
            <th>Edit</th>
            <th>Delete</th>
            
        </tr>
<%            
	for (Animal d : animal) {
		
%>	             

            
         	<tr>
         		<td> <%=d.getAnimal_Id() %> </td>
         		<td> <%=d.getAnimal_Name()%> </td>
         		<td> <%=d.getAnimal_Gender()%> </td>
         		<td> <%=d.getYear_arrived()%> </td>
         		<td> <%=d.getKeepers_Id()%> </td>
         		<td> <%=d.getDiet_Id()%> </td>
         		<td> <%=d.getSpecies_Id()%> </td>
         		<td> <%=d.getEnclosure_Id()%> </td>
         	
         	
         		
         	
      
      
         		
         		
         		<td><a href="editAnimal.jsp?id=<%=d.getAnimal_Id()%>">Edit</a></td>
            	<td><a href="deleteAnimal.jsp?id=<%=d.getAnimal_Id()%>">Delete</a></td>
            
         	</tr>
        
<%	             
	}   

%>
	 </table>
<%
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}




%>
</body>
</html>
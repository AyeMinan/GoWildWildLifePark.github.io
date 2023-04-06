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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Course Listing Page</title>
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
<h1> Species Information</h1>
<%


try {
	DBManager dbMgr = new DBManager();
	dbMgr.getConnection();
				
	SpeciesManager kMgr = new SpeciesManager();
	ArrayList<Species> species = kMgr.fetchAll();
%>			
	
    <table border="1">
        <tr>
            <th>Id</th>
            <th>Species Group</th>
            <th>Life Style</th>
            <th>Conversational status</th>
            <th>Species type</th>
            <th>Edit Species</th>
            <th>Delete Species</th>
        </tr>
<%            
	for (Species k : species) {
		
%>	             

            
         	<tr>
         		<td> <%=k.getSpecies_Id()%> </td>
         		<td> <%=k.getSpecies_Gp()%> </td>
         		<td> <%=k.getLife_style()%> </td>
         		<td> <%=k.getConversational_status()%> </td>
         		<td> <%=k.getSpecies_type()%> </td>
         		
         	
      
      
         		
         		
         		<td><a href="editSpecies.jsp?id=<%=k.getSpecies_Id()%>">Edit</a></td>
            	<td><a href="deleteSpecies.jsp?id=<%=k.getSpecies_Id()%>">Delete</a></td>
            
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
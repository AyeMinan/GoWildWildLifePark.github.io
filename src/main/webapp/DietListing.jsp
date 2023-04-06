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
<h1> Diet Information</h1>
<%


try {
	DBManager dbMgr = new DBManager();
	dbMgr.getConnection();
				
	DietManager dMgr = new DietManager();
	ArrayList<Diet> diet= dMgr.fetchAll();
%>			
	
    <table border="1">
        <tr>
            <th>Id</th>
            <th>Diet type</th>
            <th>Feeds per day</th>
            <th>Edit Diet</th>
            <th>Delete Diet</th>
        </tr>
<%            
	for (Diet d : diet) {
		
%>	             

            
         	<tr>
         		<td> <%=d.getDiet_Id()%> </td>
         		<td> <%=d.getDiet_type()%> </td>
         		<td> <%=d.getFeeds_per_day()%> </td>
         	
         		
         	
      
      
         		
         		
         		<td><a href="editDiet.jsp?id=<%=d.getDiet_Id()%>">Edit</a></td>
            	<td><a href="deleteDiet.jsp?id=<%=d.getDiet_Id()%>">Delete</a></td>
            
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%@ page import = "java.util.*" %>
 <%@ page import = "java.sql.*" %>
 <%@ page import = "java.util.ArrayList" %>
 <%@ page import = "com.csm.dao.KeeperManager"%>
 <%@ page import = "com.csm.Entity.Keeper" %>
 <%@ page import = "com.csm.DBManager" %>
 
 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<h1> Keeper's Information</h1>
<%


try {
	DBManager dbMgr = new DBManager();
	dbMgr.getConnection();
				
	KeeperManager kMgr = new KeeperManager();
	ArrayList<Keeper> keepers = kMgr.fetchAll();
%>			
	
    <table border="1">
        <tr>
            <th>Id</th>
            <th>Keeper Rank</th>
            <th>Keeper Name</th>
            <th>Date_of_Birth</th>
            <th>Edit Keeper</th>
            <th>Delete Keeper</th>
        </tr>
<%            
	for (Keeper k : keepers) {
		
%>	             

            
         	<tr>
         		<td> <%=k.getKeepers_Id()%> </td>
         		<td> <%=k.getKeepers_Rank()%> </td>
         		<td> <%=k.getKeepers_Name()%> </td>
         		<td> <%=k.getDate_of_Birth()%> </td>
         		
         	
      
      
         		
         		
         		<td><a href="editKeeper.jsp?id=<%=k.getKeepers_Id()%>">Edit</a></td>
            	<td><a href="deleteKeeper.jsp?id=<%=k.getKeepers_Id()%>">Delete</a></td>
            
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
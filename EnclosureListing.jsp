<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import = "java.util.*" %>
 <%@ page import = "java.sql.*" %>
 <%@ page import = "java.util.ArrayList" %>
 <%@ page import = "com.csm.dao.EnclosureManager"%>
 <%@ page import = "com.csm.Entity.Enclosure" %>
 <%@ page import = "com.csm.DBManager" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enclosure Listing Page</title>
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
<h1> Enclosure Information</h1>
<%


try {
	DBManager dbMgr = new DBManager();
	dbMgr.getConnection();
				
	EnclosureManager eMgr = new EnclosureManager();
	ArrayList<Enclosure> enclosure= eMgr.fetchAll();
%>			
	
    <table border="1">
        <tr>
            <th>Id</th>
            <th>Enclosure type</th>
            <th>Location</th>
            <th>Edit Enclosure</th>
            <th>Delete Enclosure</th>
        </tr>
<%            
	for (Enclosure k : enclosure) {
		
%>	             

            
         	<tr>
         		<td> <%=k.getEnclosure_Id()%> </td>
         		<td> <%=k.getEnclosure_type()%> </td>
         		<td> <%=k.getLocation()%> </td>
         	
         		
         	
      
      
         		
         		
         		<td><a href="editEnclosure.jsp?id=<%=k.getEnclosure_Id()%>">Edit</a></td>
            	<td><a href="deleteEnclosure.jsp?id=<%=k.getEnclosure_Id()%>">Delete</a></td>
            
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
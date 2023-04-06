<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
                     <%@ page import = "java.util.*" %>
 <%@ page import = "java.sql.*" %>
 <%@ page import = "java.util.ArrayList" %>
 <%@ page import = "com.csm.dao.KeeperManager"%>
 <%@ page import = "com.csm.Entity.Keeper" %>
 <%@ page import = "com.csm.DBManager" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="updateKeeper.jsp">
<%
String keeperId = request.getParameter("id");
if(keeperId == null){
out.println("Enclosure Id is not found");}
else{
int id = Integer.parseInt(keeperId);
KeeperManager dbMgr = new KeeperManager();
try{
	Keeper e = dbMgr.getById(id);
	%>
	<input type="hidden" name="Keepers_Id" value="<%=e.getKeepers_Id() %>"/>
	<label for="Keeper Rank">Keeper Rank</label>
	<input type="text" name="Keepers_Rank" id="Keepers_Rank" value="<%=e.getKeepers_Rank() %>" required/>
	<label for="Keepers_Name">Keeper Name</label>
	<input type="text" name="Keepers_Name" id="Keepers_Name" value="<%=e.getKeepers_Name()%>"/>
	<label for="Date of Birth">Date of Birth</label>
	<input type="Date" name="Date_of_Birth" id="Date_of_Birth" value="<%=e.getDate_of_Birth()%>"/>
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
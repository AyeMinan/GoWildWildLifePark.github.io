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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="updateEnclosure.jsp">
<%
String enclosureId = request.getParameter("id");
if(enclosureId == null){
out.println("Enclosure Id is not found");}
else{
int id = Integer.parseInt(enclosureId);
EnclosureManager dbMgr = new EnclosureManager();
try{
	Enclosure e = dbMgr.getById(id);
	%>
	<input type="hidden" name="Enclosure_Id" value="<%=e.getEnclosure_Id() %>"/>
	<label for="Enclosure type">Enclosure type</label>
	<input type="text" name="Enclosure_type" id="Enclosure_type" value="<%=e.getEnclosure_type() %>" required/>
	<label for="Location">Location</label>
	<input type="text" name="Location" id="Location" value="<%=e.getLocation()%>"/>
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
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
h2{
  color: white;
  text-shadow: 2px 2px 4px #000000;
}
body{
background-image: url('animal1.jpg');
background-repeat: no repeat;
background-attachment: fixed;
background-size: 100% 100%;
}
p{
  color: white;
  text-shadow: 2px 2px 4px #000000;}

a:link, a:visited {
  background-color: white;
  color: black;
  padding: 10px 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
      animation-name: example;
  animation-duration: 1s;
}
@keyframes example {
  from {background-color: white;}
  to {background-color: lightblue;}
}

a:hover, a:active {
  background-color: lightblue;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Diet</h2>
<p>One diet type is available to feed for many animals<p>
<form>
	<ul>
	<li><p><a href="Diet.html">Add Diet</a>
	<li><p><a href="DietListing.jsp">View Diet</a>
	</ul>
	</form>
</body>
</html>
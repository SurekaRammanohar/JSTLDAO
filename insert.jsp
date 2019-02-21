<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h1>
INSERT DATA</h1>
<a href="index.jsp">Back</a>
<form action="insertaction.jsp">
<table class="table">

<tr><th>Dept Name</th><td><input type="text" name="deptName"></td></tr>
<tr><th>Start Date</th><td><input type="date" name="startDate"></td></tr>
<tr><td><input type="reset" value="Clear"/></td><td><input type="submit" value="Insert"/></td></tr>
</table>
</form>
</div>
</body>
</html>
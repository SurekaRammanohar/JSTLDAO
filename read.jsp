<%@page import="com.cognizant.bean.Departmant"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.cognizant.dao.DepartmentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</head>
<body>
<div align="center">

<a href="index.jsp">Back</a>
<h1>Depatment_Details</h1>
<table border="1" class="table">

<tr>
<th>Dept ID</th>
<th>Dept_Name</th>
<th>Start_Date</th>
<th>Action</th>

</tr>

<%
DepartmentDAO deptDAO=new DepartmentDAO();
List<Departmant>deptlist=new ArrayList<Departmant>();
deptlist=deptDAO.readAll(); 
request.setAttribute("deptDetails", deptlist);
%>
<core:forEach items="${deptDetails}" var="dept">
<tr>
<td><core:out value="${dept.getDeptId()}"></core:out> </td>
<td><core:out value="${dept.getDeptName()}"></core:out> </td>
<td><core:out value="${dept.getStartDate()}"></core:out> </td>
<td> <a href="edit.jsp?deptId=${dept.getDeptId()}">Edit</a> | <a href="delete.jsp?deptId=${dept.getDeptId()}">Delete</a></td>
</tr>
</core:forEach>


</table>

</div>

</body>
</html>
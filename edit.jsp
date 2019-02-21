<%@page import="com.cognizant.bean.Departmant"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.cognizant.dao.DepartmentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
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

		<a href="index.jsp">Back</a>
		<h1>Depatment_Details</h1>
		<form action="editaction.jsp">
			<table border="1" class="table">


				<%
					DepartmentDAO deptDAO = new DepartmentDAO();
					List<Departmant> deptlist = new ArrayList<Departmant>();
					deptlist = deptDAO.read(Integer.parseInt(request.getParameter("deptId")));
					request.setAttribute("deptDetails", deptlist);
				%>
				<core:forEach items="${deptDetails}" var="dept">
					<tr>
						<th>Dept ID</th>
						<td><input type="text" value="${dept.getDeptId()}"
							name="deptId" readonly="readonly"></td>
					</tr>
					<tr>
						<th>Dept Name</th>
						<td><input type="text" value="${dept.getDeptName()}"
							name="deptName"></td>
					</tr>
					<tr>
						<th>Start Date</th>
						<td><input type="date" value="${dept.getStartDate()}"
							name="startDate"></td>
					</tr>
					<tr>
						<td><input type="reset" value="Clear" /></td>
						<td><input type="submit" value="Insert" /></td>
					</tr>
				</core:forEach>
			</table>
		</form>
	</div>

</body>
</html>
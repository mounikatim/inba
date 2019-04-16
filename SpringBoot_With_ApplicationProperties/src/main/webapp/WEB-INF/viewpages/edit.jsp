<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="/Css/design.css" rel="stylesheet" type="text/css">
</head>
<body>
	<form:form name="aswin" action="update" modelAttribute="login">

		<c:set value="${userList}" var="userPageList" />
		<table class="table table-striped">
			<tr>
				<th>Id</th>
				<th>Username</th>
				<th>MobileNo</th>
				<th>City</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>

			<c:forEach items="${list}" var="obj">
				<form:hidden path="id" value='${obj.id}' />
				<tr>
					<c:choose>
						<c:when test="${obj.id==addform.id}">

							<td>${obj.id}</td>
							<td><form:input path="name" value='${obj.name}' />
							<td><form:input path="ph" value='${obj.ph}' />
							<td><form:input path="city" value='${obj.city}' />
							<td><a href="#" onclick="aswin.submit()"><img
									src="/images/update.jpg" height="50" width="75"></a></a></td>
							<!-- 	&nbsp;&nbsp;&nbsp;&nbsp; -->
							<td><a href="delete?id=<c:out value='${obj.id}' />"><img
									src="/images/delete.jpg" height="50" width="75"></a></a></td>

						</c:when>
						<c:otherwise>
							<%-- <td><c:out value="${obj.Pojo.getId()}"/></td> --%>
							<td>${obj.id}</td>
							<td>${obj.name}</td>
							<td>${obj.ph}</td>
							<td>${obj.city}</td>

							<td><a href="edit?id=<c:out value='${obj.id}' />"> <img
									src="/images/edit.jpg" height="50" width="75"></a></td>
							<td><a href="delete?id=<c:out value='${obj.id}' />"><img
									src="/images/delete.jpg" height="50" width="75"></a></a></td>
						</c:otherwise>
					</c:choose>
				</tr>
			</c:forEach>
		</table>

	</form:form>

</body>
</html>
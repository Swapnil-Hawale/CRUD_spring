<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

</head>
<body>
	<div class="container mt-3">
		<div class="col-md-12">
			<h1 class="text-center mb-3">Welcome to User App</h1>

			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th scope="col">S.No</th>
						<th scope="col">User Name</th>
						<th scope="col">User City</th>
						<th scope="col">User Mobile Number</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${users}" var="u">
						<tr>
							<th scope="row">${u.userId}</th>
							<td>${u.userName}</td>
							<td>${u.userCity}</td>
							<td>${u.userMobile}</td>
							<td>         
						         <a href="delete/${u.userId }"> <i class="fa-regular fa-trash-can text-danger"></i> </a>
						          <a href="update/${u.userId }"> <i class="fa-regular fa-pen-nib"></i> </a>          
						   </td>
						</tr>
					</c:forEach>
					
				</tbody>
			</table>

			<div class="container text-center">
				<a href="add-user" class="btn btn-outline-success"> Add User </a>

			</div>

		</div>

	</div>
</body>
</html>

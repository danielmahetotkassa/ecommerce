<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cart | ECommerce</title>
</head>
<body>

<%@ include file="../header.jsp"%>


<table class="table table-hover">
		<thead class="thead-dark">
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Product Name</th>
				<th scope="col">Price</th>
				<th scope="col">Description</th>
			</tr>
		</thead>
		<tbody>


			<c:forEach items="${selectedList}" var="todos">

				<tr>
					<td>${todos.getId()}</td>
					<td>${todos.getProductName()}</td>
					<td>${todos.getPrice()}</td>
					<td>${todos.getDescription()}</td>
					
				</tr>
			</c:forEach>

		</tbody>
	</table>


<br><br>
<a href = "cart/update"><button type="button" class="btn btn-danger">Clear Cart</button> </a>

<br>
<br>

</body>
</html>
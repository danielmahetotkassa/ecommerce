<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ECommerce | Digital Commerce</title>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
	<!-- Adding the header of the page into every page of the enterprise app -->
	<%@ include file="header.jsp"%>


	<table cellpadding="30px">
		<tr>
			<td><img src="image/cart.svg" height=200 width=200> <br>Price
				: $80.00
				<form action="/product" method="post" id="submitForm">
					<a href="" style=""> <input id="prodName" name="productName"
						type="hidden" value="Toys"> <input id="prodPrice"
						name="price" type="hidden" value="80"> <input
						id="prodDescription" name="description" type="hidden"
						value="This is a wonderful product"> <input type="submit"
						id="btnSubmit" value="Add To Cart"> <img
						src="image/cart.svg" height=30 width=30 />
					</a>
				</form></td>


			<td><img src="image/1283342.svg" height=200 width=200> <br>Price
				: $70.00
				<form action="/product" method="post" id="submitForm">
					<a href="" style=""> <input id="prodName" name="productName"
						type="hidden" value="T-shirts"> <input id="prodPrice"
						name="price" type="hidden" value="70"> <input
						id="prodDescription" name="description" type="hidden"
						value="I love this product"> <input type="submit"
						id="btnSubmit" value="Add To Cart"> <img
						src="image/cart.svg" height=30 width=30 />
					</a>
				</form></td>



			<td><img src="image/1524539.svg" height=200 width=200> <br>Price
				: $60.00

				<form action="/product" method="post" id="submitForm">
					<a href="" style=""> <input id="prodName" name="productName"
						type="hidden" value="T-shirts"> <input id="prodPrice"
						name="price" type="hidden" value="70"> <input
						id="prodDescription" name="description" type="hidden"
						value="I love this product"> <input type="submit"
						id="btnSubmit" value="Add To Cart"> <img
						src="image/cart.svg" height=30 width=30 />
					</a>
				</form></td>


			<td><img src="image/1559863.svg" height=200 width=200> <br>Price
				: $50.00
				<form action="/product" method="post" id="submitForm">
					<a href="" style=""> <input id="prodName" name="productName"
						type="hidden" value="T-shirts"> <input id="prodPrice"
						name="price" type="hidden" value="70"> <input
						id="prodDescription" name="description" type="hidden"
						value="I love this product"> <input type="submit"
						id="btnSubmit" value="Add To Cart"> <img
						src="image/cart.svg" height=30 width=30 />
					</a>
				</form></td>

			<td><img src="image/1573145.svg" height=200 width=200> <br>Price
				: $40.00
				<form action="/product" method="post" id="submitForm">
					<a href="" style=""> <input id="prodName" name="productName"
						type="hidden" value="T-shirts"> <input id="prodPrice"
						name="price" type="hidden" value="70"> <input
						id="prodDescription" name="description" type="hidden"
						value="I love this product"> <input type="submit"
						id="btnSubmit" value="Add To Cart"> <img
						src="image/cart.svg" height=30 width=30 />
					</a>
				</form></td>
		</tr>


	</table>


	<script>
		$(document).ready(function() {

			$("#submitForm").submit(function(e) {

				//stop submitting the form to see the disabled button effect
				// 	e.preventDefault();

				//disable the submit button
				$("#btnSubmit").attr("disabled", true);

				return true;

			});
		});
	</script>


	<%@ include file="footer.jsp"%>


</body>
</html>
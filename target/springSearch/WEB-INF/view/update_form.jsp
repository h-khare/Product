<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
<title>Insert title here</title>
</head>
<body>

<h1>Hellow</h1>

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Change Product Details</h1>

				<form action="${pageContext.request.contextPath }/handle-product" method="post">
				
				<input type="text" value="${product.id }" name="id">
				
					<div class="form-group">
						<label for="name">Product Name</label>
						<input type="text" name="name" class="form-control" value="${product.name }" placeholder="Enter the product name here">
					</div>
					<div class="form-group">
						<label for="description">Product Description</label>
						<textarea class="form-control" name="description" rows="5" placeholder="Enter the product description">${product.description }</textarea>
					</div>

					<div class="form-group">
						<label for="price">Product Price</label>
						<input type="text" name="price" value="${product.price }" class="form-control" placeholder="Enter product price">
					</div>

					<div class="container text-center">
						<a href="${pageContext.request.contextPath}/" class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Update</button>
					</div>

				</form>

			</div>
		</div>
	</div>


</body>
</html>
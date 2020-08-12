<%@include file="Menu.jsp" %>

<style type="text/css">
body {
  background: url('resources/images/mp.jpg') no-repeat center center fixed;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  background-size: cover;
  -o-background-size: cover;
}
</style>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<h3 align="center">Manage Product</h3>

<form:form action="InsertProduct" method="post" modelAttribute="product" enctype="multipart/form-data" >

<table align="center" class="table table-bordered">
	<tr>
		<td>Product Name</td>
		<td><form:input path="productName"/></td>
	</tr>
	<tr>
		<td>Product Price</td>
		<td><form:input path="price"/></td>
	</tr>
	<tr>
		<td>Stock</td>
		<td><form:input path="stock"/></td>
	</tr>
	<tr>
		<td>Category</td>
		<td><form:select path="categoryId">
			<form:option value="0" label="--Select List--"/>
			<form:options items="${categoryList}"/>
		</form:select></td>
	</tr>
	<tr>
		<td>Supplier</td>
		<td><form:input path="supplierId"/></td>
	</tr>
	<tr>
		<td>Product Desc</td>
		<td><form:input path="productDesc"/></td>
	</tr>
	<tr>
		<td>Product Image</td>
		<td><form:input type="file" path="pimage"/></td>
	</tr>
	<tr>
		<td colspan="2">
			<center><input type="submit" value="Insert Product"/></center>
		</td>
	</tr>
</table>
</form:form>

<table align="center" class="table table-bordered">
	<tr>
		<td>Product ID</td>
		<td>Product Name</td>
		<td>Category</td>
		<td>Price</td>
		<td>Supplier</td>
		<td>Operation</td>
	</tr>
	<c:forEach items="${productList}" var="product">
	<tr>
		<td>${product.productId}</td>
		<td>${product.productName}</td>
		<td>${product.categoryId}</td>
		<td>${product.price}</td>
		<td>${product.supplierId}</td>
		<td>
			<a href="<c:url value="/editProduct/${product.productId}"/>">Edit</a>
			<a href="<c:url value="/deleteProduct/${product.productId}"/>">Delete</a>
		</td>
	</tr>
	</c:forEach>
</table>

</div>

</body>
</html>
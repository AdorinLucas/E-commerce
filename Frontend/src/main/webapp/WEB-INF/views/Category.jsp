<%@include file="Menu.jsp" %>

<style type="text/css">
body {
  background: url('resources/images/mc.jpg') no-repeat center center fixed;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  background-size: cover;
  -o-background-size: cover;
}
</style>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  

<h3 align="center">Manage Category</h3>

<form action="<c:url value= 'insertCategory' />" method="post">
<div class="table-responsive">
<table align="center" class="table table-bordered">
	<tr>
		<td>Category Name</td>
		<td><input type="text" name="catName"/></td>
	</tr>
	<tr>
		<td>Category Desc</td>
		<td><textarea cols="40" rows="5" name="catDesc"></textarea></td>
	</tr>
	<tr>
		<td colspan="2">
			<center>
			<input type="submit" value="Insert Category" class="btn btn-info"/>
			</center>
		</td>
	</tr>
</table>
</div>
</form>

<div class="table-responsive">
<table align="center" class="table table-bordered">
	<tr class="success">
		<td>Category ID</td>
		<td>Category Name</td>
		<td>Category Desc</td>
		<td>Operation</td>
	</tr>
	<c:forEach items="${categoryList}" var="category"> 
	<tr class="success">
		<td>${category.categoryId}</td>
		<td>${category.categoryName}</td>
		<td>${category.categoryDesc}</td>
		<td>
			 <a href=<c:url value="/deleteCategory/${category.categoryId}"/> class="btn btn-danger">DELETE</a>
			<a href=<c:url value="/editCategory/${category.categoryId}"/> class="btn btn-default">EDIT</a>
		</td>
	</tr>
	</c:forEach>

</table>
</div>

</div>
</body>
</html>


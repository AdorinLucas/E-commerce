<%@ include file="Menu.jsp" %>

<style type="text/css">
body {
 background-color:silver;
}
</style>



<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<h3 align="center">Product Information</h3>

<div class="container">
    <div class="content-wrapper">	
		<div class="item-container">	
			<div class="container">	
			<div class="row">
				<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
					<div class="product col-sm-3 service-image-left">
							<img class="image-responsive" width="300" height="300"  id="item-display" src="<c:url value="/resources/images/${product.productId}.jpg"/>" alt=""></img>
					</div>
				</div>
				<form action="<c:url value="/addToCart/${product.productId}"/>" method="get">
				<div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
					<div class="product-title">${product.productName}</div>
					<div class="product-desc">${product.productDesc}</div>
					<hr>
					<div class="product-price">INR ${product.price}/-</div>
					<div class="product-stock">In Stock</div>
					<div class="product-price">Quantity 
							<select name="quantity">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
							</select>
					</div>
					<hr>
					<div class="btn-group cart">
						<input type="submit" value="Add to Cart" class="btn btn-success">
					</div>
					<div class="btn-group wishlist">
						<input type="submit" value="Buy now" class="btn btn-danger">
					</div>
				</div>
				</form>
			  </div>
			  
				
			</div> 
		</div>

</div>

</body>
</html>
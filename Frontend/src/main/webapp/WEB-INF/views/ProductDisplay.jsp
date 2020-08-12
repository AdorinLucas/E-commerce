<%@include file="Menu.jsp" %>

<style type="text/css">
body {
  background: url('resources/images/pd.jpg') no-repeat center center fixed;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  background-size: cover;
  -o-background-size: cover;
}


</style>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<h3 align="center">Product Catalog</h3>
<main class="mt-5 pt-4">
<div class="container">
<section class="text-center mb-4">
        <div class="row">
          <c:forEach items="${productList}" var="product">
          <div class="col-md-4 col-md-4 col-md-4">
              <div class="card">
                <div class="view overlay">
                  <a href="<c:url value="/totalProductDisplay/${product.productId}"/>" >
                  <img class="img img-thumbnail" src="<c:url value="/resources/images/${product.productId}.jpg"/>" >               
                  </a>
                </div>
                <div class="card-body ">
                <a href="<c:url value="/totalProductDisplay/${product.productId}"/>" >
                  <strong class="card-text">
                    Product Name:${product.productName}
                    <br>
                    Price :${product.price}
                    <br>
                    Stock :${product.stock}
                    <span class="badge badge-pill danger-color">NEW</span>
                  </strong>
                  </a>
                  

              </div>
              <!--Card content-->

            </div>
            <!--Card-->

          </div>
 </c:forEach>
 </div>
 </section>
 </div>
 </main>
</body>
</html>
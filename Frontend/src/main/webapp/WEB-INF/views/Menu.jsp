<%@ page language="java" contentType="text/html" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CornerStone</title>

<meta name="viewport" content="width=device-width,initial-scale=1"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
 <div class="container">
    <nav class="navbar navbar-inverse" >
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="#">CornerStone</a>
        </div>
        <ul class="nav navbar-nav">
          
          <li ><a href="home">Home</a></li> 
          
           <c:if test="${!sessionScope.loggedIn}"> 
      		<li><a href="login">Login</a></li>
      		<li><a href="register">Register</a></li>
      		<li><a href="contactUs">Contact Us</a></li>
           </c:if> 
          
           <c:if test="${sessionScope.loggedIn}"> 
    	     <c:if test="${sessionScope.role=='ROLE_ADMIN'}"> 
      		  <li><a href="<c:url value="category"></c:url>">Manage Category</a></li>
      		  <li><a href="product">Manage Product</a></li>
            	</c:if>
          </c:if> 
            <c:if test="${sessionScope.loggedIn}">
    	     <c:if test="${sessionScope.role=='ROLE_USER'}"> 
      		 
      		 <li class="dropdown">
             <a class="dropdown-toggle" data-toggle="dropdown" href="#">Products
             <span class="caret"></span></a>
             <ul class="dropdown-menu">
             <li><a href="productdisplay">All products</a></li>
             <li><a href="mobiles">Mobiles</a></li>
             <li><a href="household">Household Appliances</a></li>
             <li><a href="furniture">Furniture</a></li>
             </ul>
             </li>
      		 
      		  <li><a href="cart">Cart</a></li>
      		  
      		  
      		  <li><form class="navbar-form navbar-left" action="<c:url value= 'search' />">
                  <div class="input-group">
                  <input type="text" name="prodName"  class="form-control" placeholder="Search Products">
                  <div class="input-group-btn">
                  <button class="btn btn-default" type="submit">
                  <i class="glyphicon glyphicon-search"></i>
                  </button>
                  </div>
                  </div>
                  </form></li>
      	     </c:if>
          </c:if> 
        </ul>
       

        <ul class="nav navbar-nav navbar-right">
		  <c:if test="${!sessionScope.loggedIn}"> 
			<li><a href="<c:url value="/register"/>"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
			<li><a href="<c:url value="/login"/>"><span	class="glyphicon glyphicon-log-in"></span> Login</a></li>
		   </c:if> 
		  <c:if test="${sessionScope.loggedIn}"> 
			<li><a href="#"><span class="glyphicon glyphicon-user">${sessionScope.username}</span></a></li>
			<li><a href="<c:url value="/perform_logout"/>"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
		   </c:if> 
	    </ul>
    
      </div>
    </nav>
    
    
 
<%@include file="Menu.jsp"%>
<div class="container">

    <div class="row">
        <div class="col-xs-12">
    		<div class="invoice-title">
    			<h2>Invoice</h2><h3 class="pull-right">Order # ${order.orderId}</h3>
    		</div>
    		<hr>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    				<strong>Billed To:</strong><br>
    				    <h4><strong>Customer Name:</strong>${customerName}</h4>
    					<h4><strong>Customer Address</strong></h4>
    					<h4>${address1}</h4>
    					<h4>${address2}</h4>
    				    <h4>${pincode}</h4>
    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    				<address>
        			<strong>Total Shopping Amount:</strong><br>
    					${total_Amount}
    				</address>
    			</div>
    		</div>
    		<div class="row">
    			<div class="col-xs-6">
    				<address>
    					<strong>Payment Method:</strong><br/>
    					${order.pmode}<br/>
    				</address>
    			</div>
    			<div class="col-xs-6 text-right">
    				<address>
    					<strong>Order Date:</strong><br>
    					${order.orderDate}<br><br>
    				</address>
    			</div>
    		</div>
    	</div>
    </div>
    
    <div class="row">
    	<div class="col-md-12">
    		<div class="panel panel-default">
    			<div class="panel-heading">
    				<h3 class="panel-title"><strong>Order summary</strong></h3>
    			</div>
    			<div class="panel-body">
    				<div class="table-responsive">
    					<table class="table table-condensed">
    						<thead>
                                <tr>
        							<td><strong>Item</strong></td>
        							<td class="text-center"><strong>Price</strong></td>
        							<td class="text-center"><strong>Quantity</strong></td>
        							<td class="text-right"><strong>Totals</strong></td>
                                </tr>
    						</thead>
    						<tbody>
    							<c:forEach items="${listCartItems}" var="cartItem">
    							<tr>
    								<td>${cartItem.productName }</td>
    								<td class="text-center">${cartItem.price}</td>
    								<td class="text-center">${cartItem.quantity}</td>
    								<td class="text-right">${cartItem.price * cartItem.quantity}</td>
    							</tr>
    							</c:forEach>
    						</tbody>
    					</table>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
</div>
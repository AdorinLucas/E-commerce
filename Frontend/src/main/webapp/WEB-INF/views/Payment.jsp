<%@include file="Menu.jsp" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<style type="text/css">
body {
  background: url('resources/images/pay.jpg') no-repeat center center fixed;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  background-size: cover;
  -o-background-size: cover;
}



:root {
  --input-padding-x: 1.5rem;
  --input-padding-y: .75rem;
}


.card-pay {
  border: 0;
  border-radius: 1rem;
  background: linear-gradient(to bottom, #ffffff 0%, #ffffff 97%);
  box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
}

.card-pay .card-title {
  margin-bottom: 2rem;
  font-weight: 300;
  font-size: 1.5rem;
}

.card-pay .card-body {
  padding: 2rem;
}

.form-pay {
  width: 100%;
}

.form-pay .btn {
  font-size: 80%;
  border-radius: 5rem;
  letter-spacing: .1rem;
  font-weight: bold;
  padding: 1rem;
  transition: all 0.2s;
}

.form-label-group {
  position: relative;
  margin-bottom: 1rem;
}

.form-label-group input {
  height: auto;
  border-radius: 2rem;
}

.form-label-group>input,
.form-label-group>label {
  padding: var(--input-padding-y) var(--input-padding-x);
}

.form-label-group>label {
  position: absolute;
  top: 0;
  left: 0;
  display: block;
  width: 100%;
  margin-bottom: 0;
  /* Override default `<label>` margin */
  line-height: 1.5;
  color: #495057;
  border: 1px solid transparent;
  border-radius: .25rem;
  transition: all .1s ease-in-out;
}

.form-label-group input::-webkit-input-placeholder {
  color: transparent;
}

.form-label-group input:-ms-input-placeholder {
  color: transparent;
}

.form-label-group input::-ms-input-placeholder {
  color: transparent;
}

.form-label-group input::-moz-placeholder {
  color: transparent;
}

.form-label-group input::placeholder {
  color: transparent;
}

.form-label-group input:not(:placeholder-shown) {
  padding-top: calc(var(--input-padding-y) + var(--input-padding-y) * (2 / 3));
  padding-bottom: calc(var(--input-padding-y) / 3);
}

.form-label-group input:not(:placeholder-shown)~label {
  padding-top: calc(var(--input-padding-y) / 3);
  padding-bottom: calc(var(--input-padding-y) / 3);
  font-size: 12px;
  color: #777;
}

@supports (-ms-ime-align: auto) {
  .form-label-group>label {
    display: none;
  }
  .form-label-group input::-ms-input-placeholder {
    color: #777;
  }
}



@media all and (-ms-high-contrast: none),
(-ms-high-contrast: active) {
  .form-label-group>label {
    display: none;
  }
  .form-label-group input:-ms-input-placeholder {
    color: #777;
  }
}




</style>



<div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-pay my-5">
          <div class="card-body">
            <h4 class="card-title text-center">Payment</h4>
            <form class="form-pay" action="<c:url value="/receipt"/>" method="post">
              <div class="form-label-group">
                <input type="radio" name="pmode" value="COD"/>Cash on Delivery
				<input type="radio" name="pmode" value="CC"/>Credit Card
				<input type="radio" name="pmode" value="DC"/>Debit Card
			  </div>
              
              <div class="form-label-group">
                <input type="text" id="cardno" class="form-control" name="cardNo" placeholder="Card Number"  autofocus>
                <label for="cardno">Card Number</label>
              </div>
              
              <div class="form-label-group">
                <input type="text" id="valid" class="form-control" name="valid" placeholder="Valid Upto"  autofocus>
                <label for="valid">Valid Upto</label>
              </div>

              <div class="form-label-group">
                <input type="text" id="name" name="uname" class="form-control" placeholder="Name" >
                <label for="name">Name</label>
              </div>
              
              <div class="form-label-group">
              <h5>Is the Shipping address same as the customer Address</h5>
                <input type="radio" name="S_add" value="Y"/>Yes
				<input type="radio" name="S_add" value="N"/>No
				
			  </div>
              
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Pay and Checkout</button>
              </form>
              </div>
              
          
        </div>
      </div>
    </div>
  </div>
</body>
</html>
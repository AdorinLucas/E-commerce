<%@include file="Menu.jsp" %>

<style type="text/css">

body {
  background: url('resources/images/reg.jpeg') no-repeat center center fixed;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  background-size: cover;
  -o-background-size: cover;
}



:root {
  --input-padding-x: 1.5rem;
  --input-padding-y: .75rem;
}


.card-register {
  border: 0;
  border-radius: 1rem;
  background: linear-gradient(to bottom, #ffffff 0%, #ffffff 97%);
  box-shadow: 0 0.5rem 1rem 0 rgba(0, 0, 0, 0.1);
}

.card-register .card-title {
  margin-bottom: 2rem;
  font-weight: 300;
  font-size: 1.5rem;
}

.card-register .card-body {
  padding: 2rem;
}

.form-register {
  width: 100%;
}

.form-register .btn {
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
        <div class="card card-register my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Register</h5>
            <form class="form-signin" action="<c:url value= "/signup" />" method="post">
              <div class="form-label-group">
                <input type="text" id="customername" class="form-control" name="Customer name" placeholder="Customer name" required autofocus>
                <label for="customername">Enter Customer name</label>
              </div>
              
              <div class="form-label-group">
                <input type="email" id="emailid" class="form-control" name="Email Id" placeholder="Email Id" required autofocus>
                <label for="emailid">Enter Email Id</label>
              </div>
              
              <div class="form-label-group">
                <input type="text" id="mobile" class="form-control" name="Mobile number" placeholder="Mobile Number" required autofocus>
                <label for="mobile">Enter mobile number</label>
              </div>
              
               <div class="form-label-group">
                <input type="text" id="address1" class="form-control" name="Address_Line1" placeholder="Address_Line1" required autofocus>
                <label for="address1">Enter Address Line 1</label>
              </div>
              
              <div class="form-label-group">
                <input type="text" id="address2" class="form-control" name="Address_Line2" placeholder="Address_Line2" required autofocus>
                <label for="address2">Enter Address Line 2</label>
              </div>
              
              <div class="form-label-group">
                <input type="text" id="pincode" class="form-control" name="Pincode" placeholder="Pincode" required autofocus>
                <label for="Pincode">Enter Pincode</label>
              </div>
              
              <div class="form-label-group">
                <input type="text" id="username" class="form-control" name="Username" placeholder="Username" required autofocus>
                <label for="username">Username</label>
              </div>

              <div class="form-label-group">
                <input type="password" id="inputPassword" name="Password" class="form-control" placeholder="Password" required>
                <label for="inputPassword">Password</label>
              </div>
              
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" value="Register">SignUp</button>
              
              
              </form>
          </div>
        </div>
      </div>
    </div>
  </div>




</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
<script>
   /*  function validateMobileNumber() {
        var mobileNumber = document.getElementById("mobileNo").value;
        if (mobileNumber.length !== 10) {
            alert("Please enter a 10-digit mobile number.");
            return false;
        }
        return true;
    } */
</script>
</head>
<body>
   <!-- <h1> This is add User form</h1> -->
   
    <div class="container mt-3">
      <div class="col-md-6 offset-md-3">
          <h1 class="text-center mb-3"> Fill the user details</h1>
          
          <form action="handle-user" method="post" onsubmit="return validateMobileNumber();">
              <div class="form-group">
                <label for="name"> User Name</label> <input type="text"
                class="form-control" id="Name" aria-describedby="emailHelp"
                name="userName" placeholder="Enter User Name" required>
           
              </div>
              
              <div class="form-group">
                  <label for="city"> User City</label>
                  <input type="text"
                   class="form-control"
                    name="userCity"
                     id="city"
                      placeholder="Enter User City" 
                      title="Please Enter City"
                      required>  
              </div>
              
              <div class="form-group">
                  <label for="mobileNo"> Mobile Number </label>
                  <input type="tel"
                  placeholder="Enter Mobile Number"
                  name="userMobile"
                  class="form-control" id="mobileNo" maxlength="10" 
                  pattern="[0-9]{10}"
                  title="Please enter a 10-digit mobile number" 
                  required
                  >
              </div>
              
              <div class="container text-center">
                   <a href="${pageContext.request.contextPath }/"
                     class="btn btn-outline-danger" > Back</a>
                     
                     <button type="submit" class="btn btn-primary"> Add</button>
              </div>
              
          </form>
      
      </div>
  
  </div>
   
</body>
</html>
>
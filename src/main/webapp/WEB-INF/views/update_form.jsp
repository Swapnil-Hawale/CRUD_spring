<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
</head>
<body>
   <!-- <h1> This is add User form</h1> -->
   
    <div class="container mt-3">
      <div class="col-md-6 offset-md-3">
          <h1 class="text-center mb-3"> Change User Details</h1>
          
          <form action="${pageContext.request.contextPath}/handle-user" method="post">
          
          <input type="hidden" value="${user.userId}" name="userId" />
              <div class="form-group">
                <label for="name"> User Name</label> <input type="text"
                class="form-control" id="Name" aria-describedby="emailHelp"
                name="userName" placeholder="Enter User Name"
                value="${user.userName}">
           
              </div>
              
              <div class="form-group">
                  <label for="city"> User City</label>
                  <input type="text"
                   class="form-control"
                    name="userCity"
                     id="city"
                      placeholder="Enter User City" value= "${user.userCity}">
                       
              </div>
              
              <div class="form-group">
                  <label for="mobileNo"> Mobile Number </label>
                  <input type="text"
                  placeholder="Enter Mobile Number"
                  name="userMobile"
                  class="form-control" id="mobileNo" value="${user.userMobile}" 
                  pattern="[0-9]{10}"
                  title="Please enter a 10-digit mobile number"
                  required
                  >
              </div>
              
              <div class="container text-center">
                   <a href="${pageContext.request.contextPath }/"
                     class="btn btn-outline-danger" > Back</a>
                     
                     <button type="submit" class="btn btn-warning"> Update</button>
              </div>
              
          </form>
      
      </div>
  
  </div>
   
</body>
</html>
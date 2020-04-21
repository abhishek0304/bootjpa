<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>VIEW EMPLOYEE</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
</head>
<body>
<div class="container">
<h2>View Employee Details</h2>  
   
   <div class="table-responsive-sm">          
  <table class="table table-dark table-hover">
    <thead>
      <tr>
        <th>Employee ID</th>
        <th>First name</th>
        <th>Last name</th>
        <th>Designation</th>
        <th>E-mail</th>
        <th>Mobile</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>${employee.id}</td>
        <td>${employee.fname}</td>
        <td>${employee.lname}</td>
        <td>${employee.designation}</td>
        <td>${employee.email}</td>
        <td>${employee.mobile}</td>
      </tr>
    </tbody>
  </table>
  <table class="table table-dark table-hover">
<tr><td>
<a href="emp_registration.jsp" class="btn btn-danger">HOME</a>
</td></tr>
</table>
  </div>
</div>
</body>
</html>
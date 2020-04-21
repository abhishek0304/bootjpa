<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Registration</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
<h2>Employee Registration</h2>
<form action = "addEmployee">
<table class="table table-dark table-hover">

<tr><td>
<label for="id">Employee Id:</label></td>
<td><input type="text" id = "id" name="id" value=${employee.id} readonly><br>
</td></tr>

<tr><td>
<label for="fname">First name:</label></td>
<td><input type="text" id ="fname" name="fname" value=${employee.fname}><br>
</td></tr>

<tr>
<td>
<label for="lname">Last name:</label>
</td>
<td>
<input type="text" id ="lname" name="lname" value=${employee.lname}><br>
</td></tr>

<tr>
<td>
<label for="designation">Designation:</label>
</td>
<td>
<input type="text" id="designation" name="designation" value=${employee.designation}><br>
</td>
</tr>

<tr>
<td>
<label for="email">Email:</label>
</td>
<td>
<input type="email" id="email" name="email" value=${employee.email}><br>
</td>
</tr>


<tr>
<td>
<label for="mobile">Mobile:</label>
</td>
<td>
<input type="text" id="mobile" name="mobile" value=${employee.mobile}><br>
</td>
</tr>

<tr><td>
<label for="pass">Password:</label></td>
<td><input type="PASSWORD" id ="pass" name="pass" value=${employee.pass}><br>
</td></tr>

<tr>
<td>
<div class="btn-group">

  <button type="Submit" class="btn btn btn-success">Submit</button>
  <button type="Reset" class="btn btn-primary">Reset</button>
  <a href="emp_registration.jsp" role="button" class="btn btn-info">Home</a>
  

</div>
</td>
</tr>

</table>
</form>
</div>







</body>
</html>
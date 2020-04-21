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

<script type="text/javascript">
function validate()
{
	var x = document.forms["myForm"]["pass"].value;
	var y = document.forms["myForm"]["pass1"].value;
	
	if (x!=y) {
    alert("Password mis-match please try again");
    return true;
  }
}


</script>
</head>
<body>

<div class="container">
<h2>Employee Registration</h2>
<form action = "addEmployee" name="myForm">
<table class="table table-dark table-hover">

<tr><td>
<label for="id">Employee Id:</label></td>
<td><input type="text" id = "id" name="id"  class="form-control form-control" required disabled><br>
</td></tr>

<tr><td>
<label for="fname">First name:</label></td>
<td><input type="text" id ="fname" name="fname" placeholder="Enter Employee's First Name" class="form-control form-control" required autofocus><br>
</td></tr>

<tr>
<td>
<label for="lname">Last name:</label>
</td>
<td>
<input type="text" id ="lname" name="lname" placeholder="Enter Employee's Last Name" class="form-control form-control" required><br>
</td></tr>

<tr><td>
<label for="pass1">Password:</label></td>
<td><input type="PASSWORD" id ="pass1" name="pass1" placeholder="Enter Password" class="form-control form-control" required><br>
</td></tr>

<tr><td>
<label for="pass">Re-Password:</label></td>
<td><input type="PASSWORD" id ="pass" name="pass" placeholder="Re-Enter Password" class="form-control form-control" required><br>
</td></tr>

<tr>
<td>
<label for="designation">Designation:</label>
</td>
<td>
<input type="text" id="designation" name="designation" placeholder="Enter Employee's Designation" class="form-control form-control"  required><br>
</td>
</tr>

<tr>
<td>
<label for="email">Email:</label>
</td>
<td>
<input type="email" id="email" name="email" placeholder="Enter Employee's email" class="form-control form-control"  required><br>
</td>
</tr>


<tr>
<td>
<label for="mobile">Mobile:</label>
</td>
<td>
<input type="text" id="mobile" name="mobile" placeholder="Enter Employee's mobile number" class="form-control form-control"  required><br>
</td>
</tr>

<tr>
<td>
<div class="btn-group">

  <button type="Submit" class="btn btn btn-success" Onclick="validate();">Submit</button>
  <button type="Reset" class="btn btn-primary">Reset</button>
  <a href="fetch.jsp" role="button" class="btn btn-info">Fetch Records</a>
  <a href="Update.jsp" class="btn btn-warning">Update</a>
  <a href="delete.jsp" class="btn btn-danger">Delete</a>

</div>
</td>
</tr>

</table>
</form>
</div>







</body>
</html>
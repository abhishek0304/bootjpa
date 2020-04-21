<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fetch Records</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
<h2>Employee Deletion</h2>
<form action = "deleteEmployee">
<table class="table table-dark table-hover">

<tr>
<td>
<label for="id">Employee Id:</label></td>
<td><input type="text" id = "id" name="id" placeholder="Enter Employee's ID" class="form-control form-control" required autofocus><br>
</td>
</tr>

<tr>
<td>
<button type="submit" class="btn btn-success">Submit</button>
</td>
</tr>

</table>
</form>
</div>
</body>
</html>
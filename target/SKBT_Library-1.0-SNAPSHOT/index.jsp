<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<html>
<head>
    <title>GSS Car Rental</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #4CAF50">
        <div>
            <a href="index.jsp" class="navbar-brand"> GSS Car Rental </a>
        </div>
    </nav>
</header>
<br>

<div class="row">
    <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

    <div class="container">
        <h3 class="text-center">List of Admin Details</h3>
        <hr>
        <div class="col-md-6">
            <a href="add.jsp" class="btn btn-primary">Add New Data</a>
        </div>
        <p></p>
        <table class="table table-bordered table-striped table-hover">
            <thead>
            <tr>
                <th>IC Number :</th>
                <th>Name</th>
                <th>User Name :</th>
                <th>Password :</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Address</th>
                <th class="text-center">Action</th>
            </tr>
            </thead>
        </table>
    </div>
</div>
</body>
</html>
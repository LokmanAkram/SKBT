<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 23/1/2022
  Time: 3:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.Connection" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>



<!DOCTYPE html>
<html>
<head>
    <title>GSS MY Car Rental System</title>
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
        <h3 class="text-center">Add Admin Details</h3>
        <hr>
        <form action="" method="post">
            <div class="form-group">
                <label>IC Number</label>
                <input type="text" class="form-control" name="custIC" placeholder="Your iC Number"/>
            </div>
            <div class="form-group">
                <label>Name</label>
                <input type="text" class="form-control" name="custName" placeholder="Your name"/>
            </div>
            <div class="form-group">
                <label>User Name</label>
                <input type="text" class="form-control" name="custUname" placeholder="Your User Name"/>
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="password" class="form-control" name="custPassword" placeholder="Your password"/>
            </div>
            <div class="form-group">
                <label>Email</label>
                <input type="email" class="form-control" name="custEmail" placeholder="Your email"/>
            </div>
            <div class="form-group">
                <label>Phone Number</label>
                <input type="tel" class="form-control" name="custPhoneNum" placeholder="Your phone number"/>
            </div>
            <div class="form-group">
                <label>Address</label>
                <textarea type="text" class="form-control" name="custAddress" placeholder="Your address"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
            <a href="index.jsp" class="btn btn-default">Back</a>
        </form>
    </div>
</div>
</body>
</html>


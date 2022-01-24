<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>

<html>
<head>
    <title>SKBTLMS</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: rebeccapurple">
        <div>
            <a href="index.jsp" class="navbar-brand"> SKBT Library Management System </a>
        </div>
    </nav>
</header>
<br>

<div class="row">
    <!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

    <div class="container">
        <h3 class="text-center">Book List</h3>
        <hr>
        <div class="col-md-6">
            <a href="add.jsp" class="btn btn-primary">Add New Book</a>
        </div>
        <p></p>
        <table class="table table-bordered table-striped table-hover">
            <thead>
            <tr>
                <th>Book ID</th>
                <th>Title</th>
                <th>Publish Year</th>
                <th>Author</th>
                <th>Book Amount</th>
                <th>Publisher</th>
                <th class="text-center">Action</th>

            </tr>
            </thead>
            <body>
            <%
                String DB_DRIVER = "org.postgresql.Driver";
                // postgres://<username>:<password>@<host>:<port>/<dbname>
                String DB_HOST = "jdbc:postgresql://postgres:system@localhost:5432/skbt";
                String DB_USER = "tevsuonhdosbws";
                String DB_PASSWORD = "4e8109eafe7d7b21553d1208bccd090c483027edb7eb9a217f5cb3de582aaa13";

                Connection conn = null;
                Statement stat = null;
                ResultSet res = null;
                Class.forName(DB_DRIVER);
                conn = DriverManager.getConnection(DB_HOST, DB_USER, DB_PASSWORD);
                stat = conn.createStatement();
                String data = "select * from book order by bookid";
                res = stat.executeQuery(data);
                while(res.next()){
            %>
            <tr>
                <td><%=res.getString("bookid")%></td>
                <td><%=res.getString("booktitle")%></td>
                <td><%=res.getString("bookpubyear")%></td>
                <td><%=res.getString("bookauthor")%></td>
                <td><%=res.getString("bookamount")%></td>
                <td><%=res.getString("bookpublisher")%></td>
                <td><%=res.getString("custAddress")%></td>
                <td class="text-center">
                    <a class="btn btn-warning">Edit</a>
                    <a class="btn btn-danger">Delete</a>
                </td>
            </tr>
            <%
                }
            %>
            </body>
        </table>
    </div>
</div>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 24/1/2022
  Time: 5:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String id = request.getParameter("d");

    String DB_DRIVER = "org.postgresql.Driver";
    String DB_HOST = "jdbc:postgresql://postgres:system@localhost:5432/skbt";
    String DB_USER = "tevsuonhdosbws";
    String DB_PASSWORD = "4e8109eafe7d7b21553d1208bccd090c483027edb7eb9a217f5cb3de582aaa13";

    Class.forName(DB_DRIVER);
    Connection conn = DriverManager.getConnection(DB_HOST,DB_USER,DB_PASSWORD);
    Statement stat = conn.createStatement();
    stat.executeUpdate("delete from book where bookid='"+id+"'");
    response.sendRedirect("index.jsp");
%>


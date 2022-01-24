package com.example.skbt_library;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


@WebServlet(name = "AddbookServlet", value = "/AddbookServlet")
public class AddbookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        HttpSession session= request.getSession();

        String bookid = (String) session.getAttribute("bookId");
        String booktitle = (String) session.getAttribute("bookTitle");
        String bookpubyear = (String) session.getAttribute("bookPubYear");
        String bookauthor = (String) session.getAttribute("bookAuthor");
        String bookamount = (String) session.getAttribute("bookAmount");
        String bookpublisher = (String) session.getAttribute("bookPublisher");

        Addbook addbook = new Addbook (bookid,booktitle,bookpubyear,bookauthor,bookamount,bookpublisher);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {
            String bookid = request.getParameter("bookId");
            String booktitle = request.getParameter("bookTitle");
            String bookpubyear = request.getParameter("bookPubYear");
            String bookauthor = request.getParameter("bookAuthor");
            String bookamount = request.getParameter("bookAmount");
            String bookpublisher = request.getParameter("bookPublisher");

            Class.forName("com.mysql.jdbc.Driver"); // ni stay
            String dbURL = "jdbc:mysql://localhost:3306/skbtlib"; //ni url dri heroku database
            String user = "root"; //ni user dri heroku database
            String pass = ""; //ni password dri heroku database
            Connection conn = DriverManager.getConnection(dbURL, user, pass);

            String query="INSERT into book (bookId,bookTitle,bookPubYear,bookAuthor,bookAmount,bookPublisher) values(?,?,?,?,?,?)";
            PreparedStatement st;
            st = conn.prepareStatement(query);
            st.setString(1,bookid);
            st.setString(2,booktitle);
            st.setString(3,bookpubyear);
            st.setString(4,bookauthor);
            st.setString(5,bookamount);
            st.setString(6,bookpublisher);
            int row= st.executeUpdate();//return no of row effected

            if(row>0){
                out.println("Record inserted");
            }else{
                out.println("Record failed");
            }

        }catch(Exception e){
            out.println(e);
        }


    }
}


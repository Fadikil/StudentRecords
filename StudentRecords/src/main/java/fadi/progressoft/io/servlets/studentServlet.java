package fadi.progressoft.io.servlets;

import fadi.progressoft.io.DatabaseUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/addStudent")
public class studentServlet extends HttpServlet {
    private DatabaseUtil databaseUtil ;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String email= request.getParameter("email");
        String course = request.getParameter("course");







    }

}

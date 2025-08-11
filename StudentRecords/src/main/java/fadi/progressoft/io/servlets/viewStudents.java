package main.java.fadi.progressoft.io.servlets;

import main.java.fadi.progressoft.io.DatabaseUtil;
import main.java.fadi.progressoft.io.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet ("/viewStudents")
public class viewStudents extends HttpServlet {
    private DatabaseUtil databaseUtil;

    @Override
    public void init() throws ServletException {
        databaseUtil = new DatabaseUtil();
    }

   public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException{
       List<Student>students = databaseUtil.getAllStudents();
       request.setAttribute("students", students);
       try {
           request.getRequestDispatcher("viewStudents.jsp").forward(request, response);
       } catch (IOException e) {
           throw new RuntimeException(e);
       }
   }
}

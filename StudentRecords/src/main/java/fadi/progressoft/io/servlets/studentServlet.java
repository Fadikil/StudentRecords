package main.java.fadi.progressoft.io.servlets;


import fadi.progressoft.io.Student;
import main.java.fadi.progressoft.io.DatabaseUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/addStudent")
public class studentServlet extends HttpServlet {
    private DatabaseUtil databaseUtil ;

     @Override
    public void init() throws ServletException{
        databaseUtil = new DatabaseUtil();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email= request.getParameter("email");
        String course = request.getParameter("course");


        if(name == null || name.trim().isEmpty() ||
                email == null || email.trim().isEmpty() ||
                course == null || course.trim().isEmpty()){
            request.setAttribute("error", "Please fill all the fields");
            request.getRequestDispatcher("student.jsp").forward(request, response);
            return;
        }
        Student student = new Student();


        student.setEmail(email);
        student.setCourse(course);
        student.setName(name);

        databaseUtil.addStudent(student);
        response.sendRedirect("student.jsp");







    }

}

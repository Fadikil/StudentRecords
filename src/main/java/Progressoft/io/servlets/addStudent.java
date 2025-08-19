package Progressoft.io.servlets;

import Progressoft.io.DatabaseUtil;
import Progressoft.io.Student;
import Progressoft.io.servlets.AddResult;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/addStudent")
public class addStudent extends HttpServlet {
    private DatabaseUtil databaseUtil;

    @Override
    public void init() throws ServletException {
        DatabaseUtil.initializeDatabase();
        databaseUtil = new DatabaseUtil();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String course = request.getParameter("course");

        if (name == null || name.trim().isEmpty() ||
                email == null || email.trim().isEmpty() ||
                course == null || course.trim().isEmpty()) {
            request.setAttribute("error", "Please fill all the fields");
            request.getRequestDispatcher("/jsp/error.jsp").forward(request, response);
            return;
        }

        Student student = new Student();
        student.setName(name);
        student.setEmail(email);
        student.setCourse(course);

        AddResult result = databaseUtil.addStudent(student);

        switch (result) {
            case SUCCESS:
                response.getWriter().write("Student added successfully!");
                break;
            case EMAIL_EXISTS:
                response.getWriter().write("Email already in use");
                break;

            default:
               response.getWriter().write("Unexpected Error Occurred");
                break;
        }
    }
}

package Progressoft.io.servlets;

import Progressoft.io.DatabaseUtil;
import Progressoft.io.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/viewStudents")
public class viewStudents extends HttpServlet {
    private DatabaseUtil databaseUtil;

    @Override
    public void init() throws ServletException {
        DatabaseUtil.initializeDatabase();
        databaseUtil = new DatabaseUtil();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        List<Student> students = databaseUtil.getAllStudents();

        StringBuilder out = new StringBuilder();
        out.append("<table>");
        out.append("<tr><th>ID</th><th>Name</th><th>Email</th><th>Course</th><th>Action</th></tr>");

        if (students != null && !students.isEmpty()) {
            for (Student student : students) {
                out.append("<tr>")
                        .append("<td>").append(student.getId()).append("</td>")
                        .append("<td>").append(student.getName()).append("</td>")
                        .append("<td>").append(student.getEmail()).append("</td>")
                        .append("<td>").append(student.getCourse()).append("</td>")
                        .append("<td><button onclick=\"deleteStudents(")
                        .append(student.getId()).append(")\">Delete</button></td>")
                        .append("</tr>");
            }
        } else {
            out.append("<tr><td colspan='5'>No Students found</td></tr>");
        }

        out.append("</table>");

        response.getWriter().write(out.toString());
    }
}

package Progressoft.io.servlets;

import Progressoft.io.DatabaseUtil;
import Progressoft.io.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/searchStudent")
public class searchStudent extends HttpServlet {
    private DatabaseUtil databaseUtil;

    @Override
    public void init() throws ServletException {
        DatabaseUtil.initializeDatabase();
        databaseUtil = new DatabaseUtil();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idparam = request.getParameter("id");
        Student student = null;


        if (idparam != null && !idparam.trim().isEmpty()) {
            try {
                int id = Integer.parseInt(idparam);
                student = databaseUtil.getStudentById(id);
            } catch (NumberFormatException ignored) {
            }
        }

        if(student != null) {
           response.getWriter().write(
                   "<p>ID: " + student.getId() + "</p>" +
                           "<p>Name:" + student.getName() + "</p>" +
                   "<p>Email:" + student.getEmail() + "</p>" +
                   "<p>Course:" + student.getCourse() + "</p>"
           );


        }else{
            response.getWriter().write("Student not found");
        }


    }
}

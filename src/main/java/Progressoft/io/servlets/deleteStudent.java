package Progressoft.io.servlets;

import Progressoft.io.DatabaseUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteStudent")
public class deleteStudent extends HttpServlet {
    private DatabaseUtil databaseUtil;

    @Override
    public void init() throws ServletException {
        DatabaseUtil.initializeDatabase();
        databaseUtil = new DatabaseUtil();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String idParam = request.getParameter("id");
        response.setContentType("text/plain;charset=UTF-8");

        if (idParam != null) {
            try {
                int id = Integer.parseInt(idParam.trim());
                boolean success = databaseUtil.deleteStudent(id);
                if (success) {
                    response.getWriter().write("Student deleted successfully.");
                } else {
                    response.getWriter().write("Failed to delete student.");
                }
            } catch (NumberFormatException e) {
                response.getWriter().write("Invalid student ID.");
            }
        } else {
            response.getWriter().write("No student ID provided.");
        }
    }
}


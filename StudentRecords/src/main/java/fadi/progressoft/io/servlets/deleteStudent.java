package main.java.fadi.progressoft.io.servlets;

import main.java.fadi.progressoft.io.DatabaseUtil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteStudent")
public class deleteStudent extends HttpServlet {
    private DatabaseUtil databaseUtil;

    public void init() throws ServletException {
        databaseUtil = new DatabaseUtil();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idParam = request.getParameter("id");
        if (idParam != null) {
            try {
                int id = Integer.parseInt(idParam);
                databaseUtil.deleteStudent(id);
            } catch (NumberFormatException ignored) {}
        }
        response.sendRedirect("viewStudents");
    }

}

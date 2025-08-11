package main.java.fadi.progressoft.io.servlets;

import main.java.fadi.progressoft.io.DatabaseUtil;
import main.java.fadi.progressoft.io.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet ("/searchStudent")

public class searchStudent extends HttpServlet {
    private DatabaseUtil databaseUtil;

    @Override
    public void init() throws ServletException{
        databaseUtil = new DatabaseUtil();
}
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idparam = request.getParameter("id");
        Student student = null;
        if (idparam != null && idparam.trim().isEmpty()){
            try {
                int id = Integer.parseInt(idparam);
                student = databaseUtil.getStudentById(id);
            } catch (NumberFormatException ignored) {
            };

            }
        request.setAttribute("student", student);
        request.getRequestDispatcher("studentDetails.jsp").forward(request, response);
        }

}

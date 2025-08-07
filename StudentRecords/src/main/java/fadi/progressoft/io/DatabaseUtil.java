package main.java.fadi.progressoft.io;
import fadi.progressoft.io.Student;

import java.sql.*;

public class DatabaseUtil {
public static void initializeDatabase() {
    try {
         Connection conn = DriverManager.getConnection ("jdbc:h2:~/Students", "sa","");
         Statement st = conn.createStatement();
        final String sql = "CREATE TABLE students (\n" +
                "    id INT PRIMARY KEY AUTO_INCREMENT,\n" +
                "    name VARCHAR(100),\n" +
                "    email VARCHAR(100),\n" +
                "    course VARCHAR(100)\n" +
                ")";
        st.execute(sql);

    } catch (final SQLException e) {
        e.printStackTrace();
    }

}
private Connection getConnection() throws SQLException {
    return DriverManager.getConnection ("jdbc:h2:~/Students", "sa","");
}
public void addStudent(final Student student) {
     String sql = "INSERT INTO students (name, email, course) VALUES (?,?,?)";
    try {
        Connection conn = getConnection();
        PreparedStatement st = conn.prepareStatement(sql);
        st.setString(1, student.getName());
        st.setString(2, student.getEmail());
        st.setString(3, student.getCourse());
        st.executeUpdate();
    } catch (SQLException e) {
        e.printStackTrace();
    }

}
}

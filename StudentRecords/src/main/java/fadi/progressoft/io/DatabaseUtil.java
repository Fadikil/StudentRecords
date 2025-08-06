package fadi.progressoft.io;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseUtil {
public static void initializeDatabase() {
    try {
        Connection conn = DriverManager.getConnection ("jdbc:h2:~/Students", "sa","");
        Statement st = conn.createStatement();
        String sql = "CREATE TABLE students (\n" +
                "    id INT PRIMARY KEY AUTO_INCREMENT,\n" +
                "    name VARCHAR(100),\n" +
                "    email VARCHAR(100),\n" +
                "    course VARCHAR(100)\n" +
                ")";
        st.execute(sql);
        st.close();
        conn.close();
    } catch (SQLException e) {

        throw new RuntimeException(e);
    }

}
}

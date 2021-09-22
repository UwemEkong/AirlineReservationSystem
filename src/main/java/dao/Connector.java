package dao;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;

public class Connector {

    private Connection connection;

    public void connect() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");

        String url = "jdbc:mysql://localhost:3306/Software";

        connection = DriverManager.getConnection(url, "uwem", "1234");

    }
}

package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class Connector {

    /**
     * Connection connection is static so there is one instance, singleton
     */
    static Connection connection = null;

//    public static void main(String[] args) throws SQLException, ClassNotFoundException {
//        connect();
//    }

    /**
     * Connects the project file to the database
     * @throws ClassNotFoundException Throws if class isn't found
     * @throws SQLException
     */
    public static void connect() throws ClassNotFoundException, SQLException {

        Class.forName("com.mysql.cj.jdbc.Driver");

        String url = "jdbc:mysql://localhost:3306/Software";
        String user1 = "root";
        String password = "software1!";

        connection = DriverManager.getConnection(url, user1, password);

//        try {
//            Statement statement = connection.createStatement();
//            String newRecord = "SELECT * FROM Flight;";
//            ResultSet result = statement.executeQuery(newRecord);
//
//            while (result.next()) {
//                int flight = result.getInt("flightID");
//                int seats = result.getInt("AvailableSeats");
//
//                System.out.println(flight + " " + seats);
//            }

//        } catch (
//
//                SQLException e) {
//            System.out.println("Could not show flights");
//
//        }
    }
}

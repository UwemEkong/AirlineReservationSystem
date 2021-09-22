package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Connector object that connects to the MySQL database
 * @version 1.0
 */
public class Connector {

    /**
     * Connection connection is static so there is one instance, singleton
     */
    static Connection connection = null;

//    public static void main(String[] args) throws SQLException, ClassNotFoundException {
//        connect();
//    }

    /**
     * Connection to the database using local host url, username, and password
     * Username = "root"
     * password = "software1!"
     * Static variable Connection passed called inside method so multiple instances aren't created
     * @throws ClassNotFoundException Throws if ClassNotFoundException
     * @throws SQLException Throws if SQLException
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

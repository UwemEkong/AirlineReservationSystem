import org.junit.Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Tests for Connector object
 * Makes sure correct exceptions are thrown
 */
public class ConnectorTest {

    /**
     * Connection connection is static so there is one instance, singleton
     */
    static Connection connection = null;

    /**
     * Test to make sure the SQLException is thrown when user log-in info is incorrect
     * Changed user name from "root" to user
     * Test passes because SQLException is thrown
     * @throws ClassNotFoundException Throws if ClassNotFound
     * @throws SQLException
     */
    @Test(expected = SQLException.class)
    public void connectTestSQLException() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");

        String url = "jdbc:mysql://localhost:3306/Software";
        String user1 = "user";
        String password = "software1!";

        connection = DriverManager.getConnection(url, user1, password);

        try {
            Statement statement = connection.createStatement();
            String newRecord = "SELECT * FROM Flight;";
            ResultSet result = statement.executeQuery(newRecord);

            while (result.next()) {
                int flight = result.getInt("flightID");
                int seats = result.getInt("AvailableSeats");

                System.out.println(flight + " " + seats);
            }

        } catch (

                SQLException e) {
            System.out.println("Could not show flights");

        }
    }

    /**
     * Test to make sure the SQLException is thrown when user log-in info is incorrect
     * Changed password from "software1!" to software
     * Test passes because SQLException is thrown
     * @throws ClassNotFoundException Throws if ClassNotFound
     * @throws SQLException
     */
    @Test(expected = SQLException.class)
    public void connectTestSQLException2() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");

        String url = "jdbc:mysql://localhost:3306/Software";
        String user1 = "root";
        String password = "software!";

        connection = DriverManager.getConnection(url, user1, password);

        try {
            Statement statement = connection.createStatement();
            String newRecord = "SELECT * FROM Flight;";
            ResultSet result = statement.executeQuery(newRecord);

            while (result.next()) {
                int flight = result.getInt("flightID");
                int seats = result.getInt("AvailableSeats");

                System.out.println(flight + " " + seats);
            }

        } catch (

                SQLException e) {
            System.out.println("Could not show flights");

        }
    }

    /**
     * Test to see if ClassNotFoundException is thrown when class is incorrect
     * Changed "com.mysql.cj.jdbc.Driver" to "com.mysql.cj.jdbc.Drive"
     * Test passes because exception is thrown
     * @throws ClassNotFoundException Throws if ClassNotFoundException
     * @throws SQLException Throws if SQLException
     */
    @Test(expected = ClassNotFoundException.class)
    public void connectTestClassNotFoundException() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Drive");

        String url = "jdbc:mysql://localhost:3306/Software";
        String user1 = "user";
        String password = "software1!";

        connection = DriverManager.getConnection(url, user1, password);


    }

}

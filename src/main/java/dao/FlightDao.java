package dao;

import models.Flight;
import models.FlightId;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class FlightDao {

    public Flight getflight(FlightId flightId)  {
        Flight f = new Flight();

        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            String url = "jdbc:mysql://localhost:3306/Software";
//            String user1 = "root";
//            String password = "software1!";
//            Connection connection = DriverManager.getConnection(url, user1, password);
//
//            Statement statement = connection.createStatement();
            Connector.connect();
            Statement statement = Connector.connection.createStatement();
            String arrivalTime = "9/18/2021 - 3:30PM";
            String newRec = "SELECT * FROM Flight WHERE ArrivalTime =" + arrivalTime;
            System.out.println("city: " + flightId.getDepartureCity());
            String depCity = flightId.getDepartureCity();
            ResultSet rs = statement.executeQuery("SELECT * FROM Software.Flight WHERE Software.Flight.ArrivalTime = '9/18/2021 - 3:30PM'");
            System.out.println("Result set: " + rs);
            if (rs.next()) {
                f.setAvailableSeats(rs.getInt("AvailableSeats"));
                f.setFlightID(rs.getInt("flightID"));
                f.setPrice(rs.getDouble("Price"));
                f.setDepartureCity(rs.getString("DepartureCity"));
                f.setArrivalCity(rs.getString("ArrivalCity"));
                f.setDepartureTime(rs.getString("DepartureTime"));
                f.setArrivalTime(rs.getString("ArrivalTime"));
                f.setFlightCapacity(rs.getInt("FlightCapacity"));

            }
        }catch(Exception e) {
            System.out.println(e);
        }

        return f;
    }
}

package dao;

import models.Flight;
import models.FlightId;


import java.sql.ResultSet;
import java.sql.Statement;

/**
 * The FlightDao class is used to write queries to the 'Software' database. This class helps us separate our 'database logic' from our 'servlet logic'. Without this class, we would have to
 * put all of our queries and connections to the database inside the servlet class. By using the 'dao' (data access object) design pattern, we take advantage of loose coupling.
 *
 * @see <a href="https://www.baeldung.com/java-dao-pattern">https://www.baeldung.com/java-dao-pattern</a>
 */
public class FlightDao {

    public Flight getflight(FlightId flightId) {
        Flight f = new Flight();

        try {
            Connector.connect();
            Statement statement = Connector.connection.createStatement();
            String query = String.format("SELECT * FROM Software.Flight " +
                    "WHERE Software.Flight.DepartureCity = '%s'" +
                    "AND Software.Flight.ArrivalCity = '%s'" +
                    "AND Software.Flight.DepartureTime = '%s'" +
                    "AND Software.Flight.ArrivalTime = '%s'", flightId.getDepartureCity(), flightId.getArrivalCity(), flightId.getDepartureTime(), flightId.getArrivalTime());
            ResultSet rs = statement.executeQuery(query);

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
        } catch (Exception e) {
            System.out.println(e);
        }

        if (f.getAvailableSeats() < flightId.getNumberOfPassengers()) {
            throw new RuntimeException("Number of passengers exceeds the number of available seats on the flight");
        }
        return f;
    }
}

package dao;

import models.Flight;
import models.FlightId;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 * The FlightDao class is used to write queries to the 'Software' database. This class helps us separate our 'database logic' from our 'servlet logic'. Without this class, we would have to
 * put all of our queries and connections to the database inside the servlet class. By using the 'dao' (data access object) design pattern, we take advantage of loose coupling.
 *
 * @see <a href="https://www.baeldung.com/java-dao-pattern">https://www.baeldung.com/java-dao-pattern</a>
 */
public class FlightDao {

    public List<Flight> getFlights(FlightId flightId) {
        List<Flight> flights = new ArrayList();

        try {
            Connector.connect();
            Statement statement = Connector.connection.createStatement();
            String query = String.format("SELECT * FROM Software.Flight " +
                    "WHERE Software.Flight.DepartureCity = '%s'" +
                    "AND Software.Flight.ArrivalCity = '%s'" +
                    "AND Software.Flight.DepartureTime = '%s'" +
                    "AND Software.Flight.ArrivalTime = '%s'", flightId.getDepartureCity(), flightId.getArrivalCity(), flightId.getDepartureTime(), flightId.getArrivalTime());

            ResultSet rs = statement.executeQuery(query);

            while (rs.next()) {
                Flight f = new Flight();
                f.setAvailableSeats(rs.getInt("AvailableSeats"));
                f.setFlightID(rs.getInt("flightID"));
                f.setPrice(rs.getDouble("Price"));
                f.setDepartureCity(rs.getString("DepartureCity"));
                f.setArrivalCity(rs.getString("ArrivalCity"));
                f.setDepartureTime(rs.getString("DepartureTime"));
                f.setArrivalTime(rs.getString("ArrivalTime"));
                f.setFlightCapacity(rs.getInt("FlightCapacity"));
                flights.add(f);

            }
        } catch (Exception e) {
            System.out.println(e);
        }

        return flights;
    }

    //To create flights, currently available seats, price, and flight capacity are hard coded. Could be added to
    public void createflight(FlightId flightId) {

        try {
            Connector.connect();
            Statement statement = Connector.connection.createStatement();

            String query = String.format("INSERT INTO Software.Flight (AvailableSeats, Price, DepartureCity, ArrivalCity, DepartureTime, ArrivalTime, FlightCapacity) " +
                    "VALUES ('%s', " +
                    "'%s', " +
                    "'%s', " +
                    "'%s', " +
                    "'%s', " +
                    "'%s', " +
                    "'%s')" , 150, 150, flightId.getDepartureCity(), flightId.getArrivalCity(), flightId.getDepartureTime(), flightId.getArrivalTime(), 150);
            statement.executeUpdate(query);

        } catch (Exception e) {
            System.out.println(e);
        }

    }

    // this gets a list of all the available flights
    public List<Flight> getAllAvailableFlights() {
        List<Flight> flights = new ArrayList();

        try {
            Connector.connect();
            Statement statement = Connector.connection.createStatement();
            String query = String.format("SELECT * FROM Software.Flight WHERE AvailableSeats > 0");

            ResultSet rs = statement.executeQuery(query);

            while (rs.next()) {
                Flight f = new Flight();
                f.setAvailableSeats(rs.getInt("AvailableSeats"));
                f.setFlightID(rs.getInt("flightID"));
                f.setPrice(rs.getDouble("Price"));
                f.setDepartureCity(rs.getString("DepartureCity"));
                f.setArrivalCity(rs.getString("ArrivalCity"));
                f.setDepartureTime(rs.getString("DepartureTime"));
                f.setArrivalTime(rs.getString("ArrivalTime"));
                f.setFlightCapacity(rs.getInt("FlightCapacity"));
                flights.add(f);
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return flights;
    }
}

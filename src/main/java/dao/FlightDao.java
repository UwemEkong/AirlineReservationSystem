package dao;

import models.Flight;
import models.FlightID;

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

    public List<Flight> getFlights(FlightID flightId) {
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

    /**
     * This method creates a flight and adds it to the database.
     *
     * @param flightId - the id of the flight that will be created
     */
    public void createFlight(FlightID flightId) {

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
                    "'%s')", 150, 150, flightId.getDepartureCity(), flightId.getArrivalCity(), flightId.getDepartureTime(), flightId.getArrivalTime(), 150);
            statement.executeUpdate(query);

        } catch (Exception e) {
            System.out.println(e);
        }

    }

    /**
     * This method deletes the flight from the database.
     *
     * @param id - the id of the flight to delete from the database
     */
    public void deleteFlight(int id) {

        try {
            Connector.connect();
            Statement statement = Connector.connection.createStatement();

            String query1 = String.format("DELETE FROM Software.Trip WHERE flightID = '%s';", id);
            statement.executeUpdate(query1);

            String query2 = String.format("DELETE FROM Software.Flight WHERE flightID = '%s';", id);
            statement.executeUpdate(query2);

        } catch (Exception e) {
            System.out.println(e);
        }

    }

    /**
     * This method gets a list of all the currently available flights.
     *
     * @return List<Flight> - the list of flights
     */
    public List<Flight> getAllAvailableFlights() {
        List<Flight> flights = new ArrayList();

        try {
            Connector.connect();
            Statement statement = Connector.connection.createStatement();
            String query = String.format("SELECT * FROM Software.Flight WHERE AvailableSeats > -1");

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

    /**
     * This method gets the flightId of the most recently added flight.
     *
     * @return id - the id of the queried flight
     */
    public int getGreatestFlightID() {

        try {
            Connector.connect();
            Statement statement = Connector.connection.createStatement();
            String query = String.format("SELECT * FROM Software.Flight WHERE FlightId = (SELECT MAX(FlightID) FROM Software.Flight);");

            ResultSet rs = statement.executeQuery(query);

            rs.next();

            return rs.getInt(1);

        } catch (Exception e) {
            System.out.println(e);
        }

        return -1;
    }

    /**
     * This method updates a flight's details.
     *
     * @param flightID - the id of the flight to update
     */
    public void updateFlight(FlightID flightID) {
        try {
            Connector.connect();
            Statement statement = Connector.connection.createStatement();

            String query = String.format("UPDATE Software.Flight " +
                            "SET AvailableSeats = '%s'" +
                            ", Price = '%s'" +
                            ", DepartureCity = '%s'" +
                            ", ArrivalCity = '%s'" +
                            ", DepartureTime = '%s'" +
                            ", ArrivalTime = '%s' " +
                            ", FlightCapacity = '%s' " +
                            "WHERE flightID = '%s'"
                    , flightID.getAvailableSeats(),
                    flightID.getPrice(),
                    flightID.getDepartureCity(),
                    flightID.getArrivalCity(),
                    flightID.getDepartureTime(),
                    flightID.getArrivalTime(),
                    flightID.getFlightCapacity(),
                    flightID.getId());
            statement.executeUpdate(query);

        } catch (Exception e) {

        }
    }
}
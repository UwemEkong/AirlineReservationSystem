package dao;

import jakarta.servlet.annotation.*;
 import jakarta.servlet.http.*;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import models.Flight;
import models.TripID;


import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * The TripDao class is used to write queries to the 'Software' database.
 *
 * @see <a href="https://www.baeldung.com/java-dao-pattern">https://www.baeldung.com/java-dao-pattern</a>
 */
public class TripDao {

    /**
     * The method gets all the trips of the specified user from the database.
     *
     * @param userID the member's userID
     * @return List<Flight> the list of the trips
     * @see <a href="https://www.baeldung.com/java-dao-pattern">https://www.baeldung.com/java-dao-pattern</a>
     */
    public List<Flight> getAllTrips(int userID) {
        List<Integer> trips = new ArrayList();
        List<Flight> flights = new ArrayList();

        try {
            Connector.connect();
            Statement statement = Connector.connection.createStatement();

            String query1 = String.format("SELECT flightID FROM Software.Trip WHERE userID = " + userID);

            ResultSet rs1 = statement.executeQuery(query1);

            while (rs1.next()) {
                int bookingID = (rs1.getInt("flightID"));
                trips.add(bookingID);
            }
            Collections.sort(trips);

            for (int i = 0; i < trips.size(); i++) {
                String query2 = String.format("SELECT * FROM Software.Flight WHERE flightID = " + trips.get(i));

                ResultSet rs2 = statement.executeQuery(query2);

                while (rs2.next()) {
                    Flight f = new Flight();
                    f.setAvailableSeats(rs2.getInt("AvailableSeats"));
                    f.setFlightID(rs2.getInt("flightID"));
                    f.setPrice(rs2.getDouble("Price"));
                    f.setDepartureCity(rs2.getString("DepartureCity"));
                    f.setArrivalCity(rs2.getString("ArrivalCity"));
                    f.setDepartureTime(rs2.getString("DepartureTime"));
                    f.setArrivalTime(rs2.getString("ArrivalTime"));
                    f.setFlightCapacity(rs2.getInt("FlightCapacity"));
                    flights.add(f);
                }

            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return flights;
    }


    /**
     * The method adds a trip into the database. For clarification, this books a flight for the user.
     *
     * @param tripId the trip to add
     * @return updateSuccess the success of the 2 query updates (adding a trip, decrementing available seats)
     * @see <a href="https://www.baeldung.com/java-dao-pattern">https://www.baeldung.com/java-dao-pattern</a>
     */
    public int addTrip(TripID tripId) throws ServletException, IOException {

        int updateSuccess = 0;
        int availableSeats;

        try {
            Connector.connect();
            Statement statement = Connector.connection.createStatement();

            String query = String.format("SELECT * FROM Software.Flight WHERE Software.Flight.flightID = " + tripId.getFlightID());
            ResultSet rs = statement.executeQuery(query);
            rs.next();
            availableSeats = rs.getInt(2);

            if (availableSeats > 0) {
                query = String.format("INSERT INTO Software.Trip (flightID, userID) " +
                        "VALUES ('%s', " +
                        "'%s')", tripId.getFlightID(), tripId.getUserID());
                updateSuccess += statement.executeUpdate(query);
            }

            if (updateSuccess == 1) {
                query = String.format("UPDATE Software.Flight set AvailableSeats = AvailableSeats - 1 WHERE flightID = " + tripId.getFlightID());
                updateSuccess += statement.executeUpdate(query);

            }



        } catch (Exception e) {
//
                 System.out.println(e);

        }


        return updateSuccess;
    }

    /**
     * The method deletes a trip from the database. For clarification, this cancels a flight for the user.
     *
     * @param tripId the trip to remove
     * @return updateSuccess the success of the 2 query updates (deleting a trip, incrementing available seats)
     * @see <a href="https://www.baeldung.com/java-dao-pattern">https://www.baeldung.com/java-dao-pattern</a>
     */
    public int deleteTrip(TripID tripId) {

        int updateSuccess = 0;

        try {
            Connector.connect();
            Statement statement = Connector.connection.createStatement();

            String query = String.format("DELETE FROM Software.Trip WHERE flightID = " + tripId.getFlightID() + " && userID = " + tripId.getUserID());
            updateSuccess += statement.executeUpdate(query);

            if (updateSuccess == 1) {
                query = String.format("UPDATE Software.Flight set AvailableSeats = AvailableSeats + 1 WHERE flightID = " + tripId.getFlightID());
                updateSuccess += statement.executeUpdate(query);
            }


        } catch (Exception e) {
            System.out.println(e);
        }

        return updateSuccess;

    }
}

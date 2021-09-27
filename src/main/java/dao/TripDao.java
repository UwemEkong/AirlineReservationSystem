package dao;

import models.Flight;
import models.TripId;


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
                System.out.println(trips.get(i));
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


    // this creates a trip (a user's booked flight)
    public void createTrip(TripId tripId) {

        try {
            Connector.connect();
            Statement statement = Connector.connection.createStatement();

            String query = String.format("INSERT INTO Software.Trip (flightID, userID) " +
                    "VALUES ('%s', " +
                    "'%s')" , tripId.getFlightID(), tripId.getUserID());
            statement.executeUpdate(query);

            query = String.format("UPDATE Software.Flight set AvailableSeats = AvailableSeats - 1 WHERE flightID = " + tripId.getFlightID());
            statement.executeUpdate(query);

        } catch (Exception e) {
            System.out.println(e);

        }

    }

    // this deletes a trip (a user's booked flight)
    public void deleteTrip(TripId tripId) {

        try {
            Connector.connect();
            Statement statement = Connector.connection.createStatement();

            String query2 = String.format("DELETE FROM Software.Trip WHERE flightID = " + tripId.getFlightID() + " && userID = " + tripId.getUserID());
            int success = statement.executeUpdate(query2);

            if (success == 1)
            {
                String query3 = String.format("UPDATE Software.Flight set AvailableSeats = AvailableSeats + 1 WHERE flightID = " + tripId.getFlightID());
                statement.executeUpdate(query3);
            }

        } catch (Exception e) {
            System.out.println(e);
        }

    }

}


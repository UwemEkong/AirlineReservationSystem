package dao;

import junit.framework.TestCase;
import models.Flight;
import models.TripID;

import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TripDaoTest extends TestCase {

    public void setUp() throws Exception {
        super.setUp();
    }

    /**
     * This tests the getAllTrips method.
     */
    public void testGetAllTrips() {

        TripDao dao = new TripDao();

        // This creates 3 trips
        TripID tripId1 = new TripID(3, 3);
        TripID tripId2 = new TripID(4, 3);
        TripID tripId3 = new TripID(5, 3);

        // This deletes the trips from the database, just in case they already exist (can't have duplicate trips)
        dao.deleteTrip(tripId1);
        dao.deleteTrip(tripId2);
        dao.deleteTrip(tripId3);

        // This adds the trips to the database
        dao.addTrip(tripId1);
        dao.addTrip(tripId2);
        dao.addTrip(tripId3);

        // This creates an empty flight list and points it to the flight list returned by the getAllTrips method
        List<Flight> flights = new ArrayList();
        flights = dao.getAllTrips(3);

        // This checks if all the trips were added to the database successfully
        int expected1 = 3;
        int actual1 = flights.get(0).getFlightID();
        assertEquals(expected1, actual1);
        int expected2 = 4;
        int actual2 = flights.get(1).getFlightID();
        assertEquals(expected2, actual2);
        int expected3 = 5;
        int actual3 = flights.get(2).getFlightID();
        assertEquals(expected3, actual3);

        // This deletes the trips from the database at the end of the test
        // so the test does not interfere with the database
        dao.deleteTrip(tripId1);
        dao.deleteTrip(tripId2);
        dao.deleteTrip(tripId3);
    }

    /**
     * This tests the createTrip method. First it deletes the trip just to make sure we start the test from scratch.
     * Second, it creates the trip. If the creation was successful, then the following delete query update should return a "1".
     */
    public void testAddTrip() throws SQLException, ClassNotFoundException {

        TripDao dao = new TripDao();
        Connector.connect();
        Statement statement = Connector.connection.createStatement();

        // This creates a trip
        TripID tripId = new TripID(2, 4);

        // This deletes the trip from the database, just in case it already exists (can't have duplicate trips)
        String query = String.format("DELETE FROM Software.Trip WHERE flightID = 2 && userID = 4");
        statement.executeUpdate(query);
        int deleteSuccess = statement.executeUpdate(query);
        if (deleteSuccess == 1) {
            query = String.format("UPDATE Software.Flight set AvailableSeats = AvailableSeats + 1 WHERE flightID = " + tripId.getFlightID());
            statement.executeUpdate(query);
        }

        // This adds the trip into the database (using the method we are testing)
        int updateSuccess = dao.addTrip(tripId);

        // This checks if the trip was added to the database successfully
        // and if the available seats count was decremented successfully
        int expected = 2;
        int actual = updateSuccess;
        assertEquals(expected, actual);

        // This deletes the trip from the database at the end of the test and increments the available seats
        // so the test does not interfere with the database
        query = String.format("DELETE FROM Software.Trip WHERE flightID = 2 && userID = 4");
        int deleteSuccess2 = statement.executeUpdate(query);
        if (deleteSuccess2 == 1) {
            query = String.format("UPDATE Software.Flight set AvailableSeats = AvailableSeats + 1 WHERE flightID = " + tripId.getFlightID());
            statement.executeUpdate(query);
        }

    }

    /**
     * This tests the deleteTrip method. First, it deletes the record, then it tries to insert the same record.
     * If delete was successful, then the following insert query update should return a "1".
     */
    public void testDeleteTrip() throws SQLException, ClassNotFoundException {

        TripDao dao = new TripDao();
        Connector.connect();
        Statement statement = Connector.connection.createStatement();

        // This creates a trip
        TripID tripId = new TripID(2, 4);

        // This adds the trip into the database
        String query = String.format("INSERT INTO Software.Trip (flightID, userID) VALUES (2,4)");
        int addSuccess = statement.executeUpdate(query);
        if (addSuccess == 1) {
            query = String.format("UPDATE Software.Flight set AvailableSeats = AvailableSeats - 1 WHERE flightID = " + tripId.getFlightID());
            statement.executeUpdate(query);
        }

        // This deletes the drip from the database (using the method we are testing)
        int updateSuccess = dao.deleteTrip(tripId);

        // This checks if the trip was added to the database successfully after the deletion
        int expected = 2;
        int actual = updateSuccess;
        assertEquals(expected, actual);

    }

}
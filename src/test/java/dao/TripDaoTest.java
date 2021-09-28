package dao;

import junit.framework.TestCase;
import models.Flight;
import models.TripId;

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
        List<Flight> flights = new ArrayList();
        flights = dao.getAllTrips(3);

        int expected1 = 3;
        int actual1 = flights.get(0).getFlightID();
        assertEquals(expected1, actual1);

        int expected2 = 4;
        int actual2 = flights.get(1).getFlightID();
        assertEquals(expected2, actual2);

        int expected3 = 5;
        int actual3 = flights.get(2).getFlightID();
        assertEquals(expected3, actual3);
    }


    /**
     * This tests the deleteTrip method. First, it deletes the record, then it tries to insert the same record.
     * If delete was successful, then the following insert query update should return a "1".
     */
    public void testDeleteTrip() throws SQLException, ClassNotFoundException {
        TripDao dao = new TripDao();
        TripId tripId = new TripId(2,4);

        dao.deleteTrip(tripId);
        Connector.connect();
        Statement statement1 = Connector.connection.createStatement();
        String query1 = String.format("INSERT INTO Software.Trip (flightID, userID) VALUES (2,4)");
        int updateSuccess1 = statement1.executeUpdate(query1);
        int expected1 = 1;
        int actual1 = updateSuccess1;
        assertEquals(expected1, actual1);

        dao.deleteTrip(tripId);
        Connector.connect();
        Statement statement2 = Connector.connection.createStatement();
        String query2 = String.format("INSERT INTO Software.Trip (flightID, userID) VALUES (2,4)");
        int updateSuccess2 = statement2.executeUpdate(query2);
        int expected2 = 1;
        int actual2 = updateSuccess2;
        assertEquals(expected2, actual2);

        dao.deleteTrip(tripId);
        Connector.connect();
        Statement statement3 = Connector.connection.createStatement();
        String query3 = String.format("INSERT INTO Software.Trip (flightID, userID) VALUES (2,4)");
        int updateSuccess3 = statement3.executeUpdate(query3);
        int expected3 = 1;
        int actual3 = updateSuccess3;
        assertEquals(expected3, actual3);

        }

    /**
     * This tests the createTrip method. First it deletes the trip just to make sure we start the test from scratch.
     * Second, it creates the trip. If the creation was successful, then the following delete query update should return a "1".
     */
    public void testCreateTrip() throws SQLException, ClassNotFoundException {

        TripDao dao = new TripDao();
        TripId tripId = new TripId(2,4);

        dao.deleteTrip(tripId);
        dao.createTrip(tripId);

        Connector.connect();
        Statement statement1 = Connector.connection.createStatement();
        String query1 = String.format("DELETE FROM Software.Trip WHERE flightID = 2 && userID = 4");
        int updateSuccess1 = statement1.executeUpdate(query1);
        int expected1 = 1;
        int actual1 = updateSuccess1;
        assertEquals(expected1, actual1);

    }
}
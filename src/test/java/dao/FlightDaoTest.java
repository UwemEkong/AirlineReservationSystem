package dao;

import models.Flight;
import models.FlightID;
import org.junit.Test;
import servlets.GetFlight;
import testutils.FlightUtils;

import java.util.List;

import static org.junit.Assert.assertEquals;

/**
 * Tests that verify the FlightDao properly queries the database for the correct records
 */
public class FlightDaoTest {

    /**
     * Tests if the getFlight method within FlightDao correctly queries for flights that match the user's input values.
     */
    @Test
    public void TestGetFlightSuccess() {
       FlightID flightId = FlightUtils.testFlightId;
       GetFlight getFlight = new GetFlight();

       List<Flight> actual = getFlight.getFlights(flightId);
       Flight expected = FlightUtils.testFlight1;

       for (int i = 0; i < actual.size(); i++) {
           assertEquals(actual.get(i), expected);
       }

    }

    /**
     * Tests if the getFlight method within GetFlight throws a runtime exception when the amount of seats on the flight is less
     * than the number of passengers that the user selects
     *
     * @throws RuntimeException
     */
    @Test(expected = RuntimeException.class)
    public void TestGetFlightFailure_NotEnoughSeats() {
        FlightID flightId = FlightUtils.testFlightId2;
        GetFlight getFlight = new GetFlight();

        List<Flight> actual = getFlight.getFlights(flightId);
    }

    /**
     * Tests if the getFlight method within Getflight throws a runtime exception if there are no flights in the database that match the user's query parameters
     *
     * @throws RuntimeException
     */
    @Test(expected = RuntimeException.class)
    public void TestGetFlightFailure_NoMatchingFlight() {
        FlightID flightId = FlightUtils.testFlightId3;
        GetFlight getFlight = new GetFlight();

        List<Flight> actual = getFlight.getFlights(flightId);
    }

    /**
     * Tests if the updateFlight method within the FlightDao successfully updates the given flight
     */
    @Test
    public void testUpdateFlight() {
//        FlightID flightId = FlightUtils.testFlightId4;
//        FlightDao flightDao = new FlightDao();
//        flightDao.createFlight(flightId);
//        flightDao.updateFlight(flightId);
//
//        List<Flight> Actual = flightDao.getFlights(flightId);
//        Flight expected = FlightUtils.testFlight5;
//
//        for (Flight f: Actual) {
//            assertEquals(expected, f);
//        }

        FlightDao dao = new FlightDao();
//'1', '**** **** **** 1234', 'adamLikesFlying1!','Adam', 'Chap', 'adam@fly.com', 'AdamFly', 'MEMBER'
        //UserID user1 = new UserID("Adam", "adamLikesFlying1!",);

        Flight f = dao.getAllAvailableFlights().get(0);
//      int id, String departureCity, String arrivalCity, String departureTime, String arrivalTime, int availableSeats, double price, int flightCapacity
        FlightID flightid = new FlightID(1,f.getDepartureCity(),f.getArrivalCity(),f.getDepartureTime(),f.getArrivalTime(),f.getAvailableSeats(),f.getPrice(),f.getFlightCapacity());

        flightid.setDepartureCity("Batman");
        flightid.setArrivalCity("Batman");
        flightid.setDepartureTime("Batman");
        flightid.setArrivalTime("Batman");
        flightid.setAvailableSeats(5);
        flightid.setPrice(5);
        flightid.setFlightCapacity(5);

        dao.updateFlight(flightid);

        Flight f2 = dao.getAllAvailableFlights().get(0);

        FlightID checkFlight = new FlightID(1,f2.getDepartureCity(),f2.getArrivalCity(),f2.getDepartureTime(),f2.getArrivalTime(),f2.getAvailableSeats(),f2.getPrice(),f2.getFlightCapacity());

        //f.getDepartureCity(),f.getArrivalCity(),f.getDepartureTime(),f.getArrivalTime(),f.getAvailableSeats(),f.getPrice(),f.getFlightCapacity()

        assertEquals("Batman", checkFlight.getDepartureCity());
        assertEquals("Batman", checkFlight.getArrivalCity());
        assertEquals("Batman", checkFlight.getDepartureTime());
        assertEquals("Batman", checkFlight.getArrivalTime());
        assertEquals(5, checkFlight.getAvailableSeats(),0);
        assertEquals(5, checkFlight.getPrice(),0);
        assertEquals(5, checkFlight.getFlightCapacity(),0);

        flightid.setDepartureCity(f.getDepartureCity());
        flightid.setArrivalCity(f.getArrivalCity());
        flightid.setDepartureTime(f.getDepartureTime());
        flightid.setArrivalTime(f.getArrivalTime());
        flightid.setAvailableSeats(f.getAvailableSeats());
        flightid.setPrice(f.getPrice());
        flightid.setFlightCapacity(f.getFlightCapacity());

        dao.updateFlight(flightid);

    }

}

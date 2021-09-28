import dao.FlightDao;
import models.Flight;
import models.FlightId;
import org.junit.Test;
import servlets.GetFlight;
import testutils.FlightUtils;

import java.util.ArrayList;
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
       FlightId flightId = FlightUtils.testFlightId;
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
        FlightId flightId = FlightUtils.testFlightId2;
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
        FlightId flightId = FlightUtils.testFlightId3;
        GetFlight getFlight = new GetFlight();

        List<Flight> actual = getFlight.getFlights(flightId);
    }

}

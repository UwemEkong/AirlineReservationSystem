import dao.FlightDao;
import models.Flight;
import models.FlightId;
import org.junit.Test;
import testutils.FlightUtils;

import static org.junit.Assert.assertEquals;

/**
 * Tests that verify the FlightDao properly queries the database for the correct records
 */
public class FlightDaoTest {

    /**
     * Tests if the getFlight method within FlightDao correctly queries for a flight that matches the user's input values.
     */
    @Test
    public void TestGetFlightSuccess() {
       FlightId flightId = FlightUtils.testFlightId;
       FlightDao flightDao = new FlightDao();

       Flight actual = flightDao.getflight(flightId);
       Flight expected = FlightUtils.testFlight;

       assertEquals(actual, expected);
    }

    /**
     * Tests if the getFlight method within FlightDao throws a runtime exception when the amount of seats on the flight is less
     * than the number of passengers that the user selects
     *
     * @throws RuntimeException
     */
    @Test(expected = RuntimeException.class)
    public void TestGetFlightFailure() {
        FlightId flightId = FlightUtils.testFlightId2;
        FlightDao flightDao = new FlightDao();

        Flight actual = flightDao.getflight(flightId);
    }

}

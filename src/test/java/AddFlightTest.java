import models.Flight;
import models.FlightID;
import org.junit.Test;
import servlets.AddFlight;
import servlets.GetFlight;
import testutils.FlightUtils;

import static org.junit.Assert.assertEquals;

public class AddFlightTest {

    /**
     * Test Add Flight
     */
    @Test
    public void TestAddFlight() {

        FlightID flightId = FlightUtils.testFlightId;

        GetFlight getFlight = new GetFlight();

        int original_size = getFlight.getFlights(flightId).size();

        AddFlight.createTheFlight(flightId);

        Flight actual = getFlight.getFlights(flightId).get(getFlight.getFlights(flightId).size()-1);

        int new_size = getFlight.getFlights(flightId).size();

        System.out.println(actual);

        assertEquals("Chicago, ORD", actual.getDepartureCity());
        assertEquals(original_size+1, new_size);
    }

}

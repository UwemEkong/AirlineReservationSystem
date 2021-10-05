import dao.Connector;
import models.Flight;
import models.FlightID;
import dao.FlightDao;
import org.junit.Test;
import servlets.AddFlight;
import servlets.GetFlight;
import testutils.FlightUtils;
import static org.junit.Assert.assertEquals;

import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Tests for Adding and Deleting Flights, these should be
 * run together to avoid losing or creating extra data your the database
 */
public class AddDeleteFlightTest {

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

    /**
     * Test Delete Flight
     */
    @Test
    public void TestDeleteFlight() {

        FlightDao dao = new FlightDao();

        int id = dao.getGreatestFlightID();

        dao.deleteFlight(id);

        int newid = dao.getGreatestFlightID();

        assertEquals(false,id == newid);

    }

}

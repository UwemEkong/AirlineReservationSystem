import dao.FlightDao;
import dao.TripDao;
import models.Flight;
import org.junit.Assert;
import org.junit.Test;
import servlets.TM1_showMyBookedTrips;

import java.util.List;

import static org.junit.Assert.assertEquals;

public class TM2_showAvailableFlightsTest {

    /**
     * Test Add Flight
     */
    @Test
    public void TestListFlights() {

        List<Flight> flights = servlets.TM2_showAvailableFlights.listFlights();

        FlightDao dao = new FlightDao();
        List<Flight> avflights = dao.getAllAvailableFlights();

        try {
            for (int i = 0; i < flights.size()-1; i++) {
                assertEquals(flights.get(i), avflights.get(i));
            }
        } catch (Exception e){
            Assert.fail();
        }

    }

}

import dao.TripDao;
import models.Flight;
import org.junit.*;
import servlets.ShowMyBookedFlights;

import java.util.List;

import static org.junit.Assert.assertEquals;

public class TM1_showMyBookedTripsTest {

    /**
     * Test Add Flight
     */
    @Test
    public void TestListFlights() {

        List<Flight> flights = ShowMyBookedFlights.listFlights(1);

        TripDao dao = new TripDao();
        List<Flight> trips = dao.getAllTrips(1);

        try {
            for (int i = 0; i < flights.size()-1; i++) {
                assertEquals(flights.get(i), trips.get(i));
            }
        } catch (Exception e){
            Assert.fail();
        }
    }

}

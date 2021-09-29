import dao.FlightDao;
import dao.TripDao;
import models.Flight;
import models.TripId;
import org.junit.Assert;
import org.junit.Test;

import java.util.List;

import static org.junit.Assert.assertEquals;

/**
 * Test cases to test booking and canceling trips,
 * these tests should be run together as they rely on each other to work
 */
public class TM3and4_bookandcancelFlightTests {

    /**
     * Test book Flight
     */
    @Test
    public void TestBookFlight() {

        TripDao tripDao = new TripDao();
        TripId tripId = new TripId(1,1);

        List<Flight> trips = tripDao.getAllTrips(1);

        int original_size = trips.size();

        System.out.println(original_size);

        servlets.TM4_bookAFlight.addTrip(tripId, tripDao);

        trips = tripDao.getAllTrips(1);
        int new_size = trips.size();
        System.out.println(new_size);
        assertEquals(new_size, original_size+1);

        servlets.TM3_cancelAFlight.deleteTrip(tripId, tripDao);


    }

    /**
     * Test cancel Flight
     */
    @Test
    public void TestCancelFlight() {

        TripDao tripDao = new TripDao();
        TripId tripId = new TripId(1,1);

        servlets.TM4_bookAFlight.addTrip(tripId, tripDao);
        List<Flight> trips = tripDao.getAllTrips(1);

        int original_size = trips.size();

        servlets.TM3_cancelAFlight.deleteTrip(tripId, tripDao);

        trips = tripDao.getAllTrips(1);
        int new_size = trips.size();

        assertEquals(new_size, original_size-1);

    }

}

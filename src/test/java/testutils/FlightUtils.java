package testutils;

import models.Flight;
import models.FlightId;

/**
 * Utility class used for storing dummy data for JUnit testing. Without this class, we would have to keep recreating testing data whenever we want to write a new test case.
 */
public class FlightUtils {

    public static final FlightId testFlightId = new FlightId(
            "Chicago, ORD",
            "Miami, MIA",
            "9/18/2021 - 10:45AM",
            "9/18/2021 - 3:30PM",
            1
    );

    public static final Flight testFlight = new Flight(
            1,
            150,
            150.0,
            "Chicago, ORD",
            "Miami, MIA",
            "9/18/2021 - 10:45AM",
            "9/18/2021 - 3:30PM",
            150);

    public static final FlightId testFlightId2 = new FlightId(
            "Chicago, ORD",
            "Miami, MIA",
            "9/18/2021 - 10:45AM",
            "9/18/2021 - 3:30PM",
            151
    );

    public static final Flight testFlight2 = new Flight(
            1,
            150,
            150.0,
            "Chicago, ORD",
            "Miami, MIA",
            "9/18/2021 - 10:45AM",
            "9/18/2021 - 3:30PM",
            150);
}

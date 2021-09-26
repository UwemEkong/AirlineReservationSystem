package testutils;

import models.Flight;
import models.FlightId;

import java.util.ArrayList;
import java.util.List;

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

    public static final FlightId testFlightId2 = new FlightId(
            "Chicago, ORD",
            "Miami, MIA",
            "9/18/2021 - 10:45AM",
            "9/18/2021 - 3:30PM",
            300
    );

    public static final FlightId testFlightId3 = new FlightId(
            "Dallas, DFW",
            "Miami, MIA",
            "9/18/2021 - 10:45AM",
            "9/18/2021 - 3:30PM",
            300
    );

    public static final Flight testFlight1 = new Flight(
            1,
            150,
            150.0,
            "Chicago, ORD",
            "Miami, MIA",
            "9/18/2021 - 10:45AM",
            "9/18/2021 - 3:30PM",
            150);

    public static final Flight testFlight2 = new Flight(
            5,
            150,
            150.0,
            "Chicago, ORD",
            "Miami, MIA",
            "9/18/2021 - 10:45AM",
            "9/18/2021 - 3:30PM",
            200);


    public static final Flight testFlight3 = new Flight(
            2,
            150,
            150.0,
            "Chicago, MDW",
            "Los Angeles, LAX",
            "9/18/2021 - 10:45AM",
            "9/18/2021 - 12:50PM",
            150);

    public static final Flight testFlight4 = new Flight(
            3,
            150,
            200.0,
            "Chicago, MDW",
            "Las Vegas, LAS",
            "9/20/2021 - 11:45AM",
            "9/20/2021 - 1:45PM",
            150);


}

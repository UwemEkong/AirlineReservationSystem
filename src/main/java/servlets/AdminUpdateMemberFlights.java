package servlets;

import dao.Connector;
import dao.TripDao;

import java.sql.ResultSet;
import java.sql.Statement;

public class AdminUpdateMemberFlights {

    public static boolean checkFlightAvailable() {
        int userID;
        TripDao trips = new TripDao();
        trips.getAllTrips(userID);

    }
}



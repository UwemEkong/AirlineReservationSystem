package servlets;

import dao.TripDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.TripID;

import java.io.IOException;

/**
 * This servlet handles all POST requests to the '/bookFlight' endpoint
 */
@WebServlet(urlPatterns = "/bookFlight")
public class BookFlight extends HttpServlet {

    static HttpServletRequest req;
    static HttpServletResponse resp;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        req = request;
        resp = response;
        TripDao tripDao = new TripDao();

        int flightID = Integer.parseInt(request.getParameter("flightID1"));
        int userID = Integer.parseInt(request.getParameter("userID"));

        TripID tripId = new TripID(flightID, userID);

        addTrip(tripId, tripDao);

        RequestDispatcher rd = request.getRequestDispatcher("browseFlights.jsp");
        rd.forward(request, response);

    }

    /**
     * This method adds a trip for a user. This means to book a flight.
     *
     * @param tripId  - the id of the trip to add to the database
     * @param tripDao - an instance of the TripDao class to help facilitate the process
     */
    public static void addTrip(TripID tripId, TripDao tripDao) {
        tripDao.addTrip(tripId);
    }

}
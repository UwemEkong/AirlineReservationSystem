package servlets;

import dao.MemberDao;
import dao.TripDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Flight;
import models.TripID;
import java.io.IOException;
import java.util.List;

/**
 * This servlet handles all POST requests to the '/cancelFlight' endpoint
 */
@WebServlet(urlPatterns = "/cancelFlight")
public class CancelFlight extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        TripDao tripDao = new TripDao();

        int flightID = Integer.parseInt(request.getParameter("flightID2"));
        int userID = Integer.parseInt(request.getParameter("userID"));

        TripID tripId = new TripID(flightID, userID);
        deleteTrip(tripId,tripDao);

        List<Flight> bookedFlights = tripDao.getAllTrips(userID);
        RequestDispatcher rd = request.getRequestDispatcher("showMyBookedFlights.jsp");
        request.setAttribute("flights", bookedFlights);
        rd.forward(request, response);
    }

    public static void deleteTrip(TripID tripId, TripDao tripDao){
        tripDao.deleteTrip(tripId);
    }



}

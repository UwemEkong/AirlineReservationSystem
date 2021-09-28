package servlets;

import dao.MemberDao;
import dao.TripDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.TripId;
import java.io.IOException;

/**
 * This servlet handles all POST requests to the '/bookAFlight' endpoint
 */
@WebServlet(urlPatterns = "/bookAFlight")
public class TM4_bookAFlight extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        TripDao tripDao = new TripDao();
        MemberDao memberDao = new MemberDao();

        int flightID = Integer.parseInt(request.getParameter("flightID1"));
        int userID = Integer.parseInt(request.getParameter("userID"));

        TripId tripId = new TripId(flightID, userID);
        createtrip(tripId,tripDao);

        RequestDispatcher rd = request.getRequestDispatcher("tmHome.jsp");
        rd.forward(request, response);

    }

    public static void createtrip(TripId tripId, TripDao tripDao){
        tripDao.createTrip(tripId);
    }
}

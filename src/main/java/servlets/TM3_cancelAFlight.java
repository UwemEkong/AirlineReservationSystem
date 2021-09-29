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
 * This servlet handles all POST requests to the '/cancelAFlight' endpoint
 */
@WebServlet(urlPatterns = "/cancelAFlight")
public class TM3_cancelAFlight extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        TripDao tripDao = new TripDao();
        MemberDao memberDao = new MemberDao();

        int flightID = Integer.parseInt(request.getParameter("flightID2"));
        int userID = Integer.parseInt(request.getParameter("userID"));

        TripId tripId = new TripId(flightID, userID);
        tripDao.deleteTrip(tripId);

        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.forward(request, response);

    }

    public static void deleteTrip(TripId tripId, TripDao tripDao){
        tripDao.deleteTrip(tripId);
    }
}

package servlets;

import dao.UserDao;
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
 * This servlet handles all POST requests to the '/cancelFlight' endpoint
 */
@WebServlet(urlPatterns = "/cancelFlight")
public class CancelFlight extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        TripDao tripDao = new TripDao();
        UserDao userDao = new UserDao();

        int flightID = Integer.parseInt(request.getParameter("flightID2"));
        int userID = Integer.parseInt(request.getParameter("userID"));

        TripID tripId = new TripID(flightID, userID);
        deleteTrip(tripId,tripDao);

        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.forward(request, response);
    }

    public static void deleteTrip(TripID tripId, TripDao tripDao){
        tripDao.deleteTrip(tripId);
    }
}

package servlets;

import dao.FlightDao;
import dao.UserDao;
import dao.TripDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletRequestWrapper;
import jakarta.servlet.http.HttpServletResponse;
import models.Flight;
import models.TripID;
import models.User;

import java.io.IOException;
import java.util.List;

/**
 * This servlet handles all POST requests to the '/bookFlightForUser' endpoint
 */
@WebServlet(urlPatterns = "/bookFlightForUser")
public class AdminBookFlight extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        TripDao tripDao = new TripDao();
        UserDao userDao = new UserDao();
        List<User> usersList = userDao.getAllUsers();

        int flightID = Integer.parseInt(request.getParameter("flightID1"));
        int userID = Integer.parseInt(request.getParameter("userID"));
        FlightDao dao = new FlightDao();
        TripID tripId = new TripID(flightID, userID);
        List<Flight> flights =  dao.getAllAvailableFlights();
        for (int i = 0; i < flights.size(); i++) {
            if (flightID == flights.get(i).getFlightID() && flights.get(i).getAvailableSeats() < 1) {
                String destination = "";
                destination = "bookForUser.jsp";
                String message = "Could not add flight.  Please try again.";

                request.setAttribute("message", message);
                System.out.print("incorrect");
                RequestDispatcher rd = request.getRequestDispatcher(destination);
                request.setAttribute("users", usersList);
                rd.forward(request, response);
            }
        }
        addTrip(tripId, tripDao);

        RequestDispatcher rd = request.getRequestDispatcher("bookForUser.jsp");
        request.setAttribute("users", usersList);
        rd.forward(request, response);

    }

    public static void addTrip(TripID tripId, TripDao tripDao) throws ServletException, IOException {
        tripDao.addTrip(tripId);

    }
}
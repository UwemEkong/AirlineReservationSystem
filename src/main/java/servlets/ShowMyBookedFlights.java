package servlets;

import dao.TripDao;
import models.Flight;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

/**
 * This servlet handles all GET requests to the '/showMyBookedFlights' endpoint
 */
@WebServlet(urlPatterns = "/showMyBookedFlights")
public class ShowMyBookedFlights extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int userID = Integer.parseInt(request.getParameter("userID"));
        List<Flight> flights = listFlights(userID);

        RequestDispatcher rd = request.getRequestDispatcher("showMyBookedFlights.jsp");
        request.setAttribute("flights", flights);

        rd.forward(request, response);

    }

    /**
     * This method gets all the flights booked by a specific user.
     *
     * @param userID - the id of the user
     * @return flights - the list of flights booked by the user
     */
    public static List<Flight> listFlights(int userID) {
        TripDao dao = new TripDao();
        List<Flight> flights = dao.getAllTrips(userID);
        return flights;
    }
}

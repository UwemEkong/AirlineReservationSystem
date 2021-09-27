package servlets;

import dao.FlightDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Flight;
import models.FlightId;

import java.io.IOException;

/**
 * This servlet handles all GET and POST requests to the '/addFlight' endpoint
 */
@WebServlet(urlPatterns = "/addFlight")
public class AddFlight extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String departureCity = request.getParameter("departureCity");
        String arrivalCity = request.getParameter("arrivalCity");
        String departureTime = request.getParameter("departureTime");
        String arrivalTime = request.getParameter("arrivalTime");
        int numPassengers = Integer.parseInt(request.getParameter("numPassengers"));

        FlightId flightId = new FlightId(departureCity, arrivalCity, departureTime, arrivalTime, numPassengers);
        FlightDao dao = new FlightDao();
        dao.createflight(flightId);

        RequestDispatcher rd = request.getRequestDispatcher("addflights.jsp");
        rd.forward(request, response);

    }

}

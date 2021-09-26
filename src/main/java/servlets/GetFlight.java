package servlets;

import dao.FlightDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.Flight;
import models.FlightId;

import java.io.IOException;
import java.util.List;

/**
 * This servlet handles all GET and POST requests to the '/getFlight' endpoint
 */
@WebServlet(urlPatterns = "/getFlight")
public class GetFlight extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String departureCity = request.getParameter("departureCity");
        String arrivalCity = request.getParameter("arrivalCity");
        String departureTime = request.getParameter("departureTime");
        String arrivalTime = request.getParameter("arrivalTime");
        int numPassengers = Integer.parseInt(request.getParameter("numPassengers"));

        FlightId flightId = new FlightId(departureCity, arrivalCity, departureTime, arrivalTime, numPassengers);
        List<Flight> flights = getFlights(flightId);

        RequestDispatcher rd = request.getRequestDispatcher("showFlight.jsp");
        request.setAttribute("flights", flights);

        rd.forward(request, response);

    }

    /**
     * Retrieves a list of flights that match the user's input values
     *
     * @param flightId - Form inputs taken from the browse flights form
     * @return List<Flight>
     */
    public List<Flight> getFlights(FlightId flightId) {
        FlightDao dao = new FlightDao();
        List<Flight> flights = dao.getFlights(flightId);

        if (flights.size() == 0) {
            throw new RuntimeException("There are no flights that match the given query parameters");
        }
        for (Flight f : flights) {
            if (f.getAvailableSeats() < flightId.getNumberOfPassengers()) {
                throw new RuntimeException("Number of passengers exceeds the number of available seats on the flight");
            }
        }
        return flights;
    }


}

package servlets;

import dao.FlightDao;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.Flight;
import models.FlightId;

import java.io.IOException;

/**
 * This servlet handles all GET and POST requests to the '/getFlight' endpoint
 */
@WebServlet(urlPatterns = "/getFlight")
public class Getflight extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String departureCity = request.getParameter("departureCity");
        String arrivalCity = request.getParameter("arrivalCity");
        String departureTime = request.getParameter("departureTime");
        String arrivalTime = request.getParameter("arrivalTime");
        int numPassengers = Integer.parseInt(request.getParameter("numPassengers"));

        FlightId flightId = new FlightId(departureCity, arrivalCity, departureTime, arrivalTime, numPassengers);
        FlightDao dao = new FlightDao();
        Flight flight = dao.getflight(flightId);



        RequestDispatcher rd = request.getRequestDispatcher("showFlight.jsp");
        request.setAttribute("flight", flight);

        rd.forward(request, response);

    }

}

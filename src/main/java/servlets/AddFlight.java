package servlets;

import dao.FlightDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.FlightID;

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

        FlightID flightId = new FlightID(departureCity, arrivalCity, departureTime, arrivalTime);
        createTheFlight(flightId);

        RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
        rd.forward(request, response);

    }

    public static void createTheFlight(FlightID flightId){
        FlightDao dao = new FlightDao();
        dao.createFlight(flightId);
    }

}

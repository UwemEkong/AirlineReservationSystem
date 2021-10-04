
package servlets;

import dao.FlightDao;
import dao.UserDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Flight;
import models.FlightID;
import models.User;
import models.UserID;

import java.io.IOException;
import java.util.List;

/**
 * This servlet handles all POST requests to the '/updateFlightInfo' endpoint
 */
@WebServlet(urlPatterns = "/updateFlightInfo")
public class UpdateFlightInfo extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String departureCity = request.getParameter("departureCity");
        String departureTime = request.getParameter("departureTime");
        String arrivalCity = request.getParameter("arrivalCity");
        String arrivalTime = request.getParameter("arrivalTime");
        int availableSeats = Integer.parseInt(request.getParameter("availableSeats"));
        double price = Double.parseDouble(request.getParameter("price"));
        int id = Integer.parseInt(request.getParameter("flightId"));
        int flightCapacity = Integer.parseInt(request.getParameter("flightCapacity"));

        FlightDao flightDao = new FlightDao();
        FlightID flightID = new FlightID(id, departureCity,arrivalCity,departureTime,arrivalTime,availableSeats, price, flightCapacity);

        flightDao.updateFlight(flightID);

        List<Flight> flights = flightDao.getAllAvailableFlights();
        UserDao dao = new UserDao();
        List<User> users = dao.getAllUsers();

        RequestDispatcher rd = request.getRequestDispatcher("showAdminPanel.jsp");
        request.setAttribute("flights", flights);
        request.setAttribute("users", users);

        rd.forward(request, response);

    }
}
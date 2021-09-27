package servlets;

import dao.FlightDao;
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
 * This servlet handles all GET requests to the '/showAvailableFlights' endpoint
 */
@WebServlet(urlPatterns = "/showAvailableFlights")
public class TM2_showAvailableFlights extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        FlightDao dao = new FlightDao();
        List<Flight> flights = dao.getAllAvailableFlights();

        RequestDispatcher rd = request.getRequestDispatcher("tmShowAvailableFlights.jsp");
        request.setAttribute("flights", flights);

        rd.forward(request, response);

    }
}

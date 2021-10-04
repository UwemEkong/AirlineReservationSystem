
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
import models.User;

import java.io.IOException;
import java.util.List;

/**
 * This servlet handles all GET requests to the '/showMemberInfo' endpoint
 */
@WebServlet(urlPatterns = "/showAdminInfo")
public class showAdminInfo extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<User> users = listAllMembers();
        List<Flight> flights = listAllFlights();

        RequestDispatcher rd = request.getRequestDispatcher("showAdminPanel.jsp");
        request.setAttribute("users", users);
        request.setAttribute("flights", flights);

        rd.forward(request, response);

    }

    public static List<User> listAllMembers(){
        UserDao dao = new UserDao();
        return dao.getAllUsers();
    }

    public static List<Flight> listAllFlights() {
        FlightDao flightDao = new FlightDao();
        return flightDao.getAllAvailableFlights();
    }

}
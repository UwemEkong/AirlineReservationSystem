package servlets;

import dao.FlightDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.FlightId;

import java.io.IOException;

/**
 * This servlet handles all GET and POST requests to the '/addFlight' endpoint
 */
@WebServlet(urlPatterns = "/deleteFlight")
public class DeleteFlight extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("flightID1"));

        deleteTheFlight(id);

        RequestDispatcher rd = request.getRequestDispatcher("tmHome.jsp");
        rd.forward(request, response);

    }

    public static void deleteTheFlight(int id){
        FlightDao dao = new FlightDao();
        dao.deleteflight(id);
    }

}

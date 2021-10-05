package servlets;

import dao.TripDao;
import dao.UserDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.TripID;

import java.io.IOException;

@WebServlet(urlPatterns = "/bookFlightForUser")
public class AdminBookFlight extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TripDao trips = new TripDao();
        UserDao user = new UserDao();

        int flightID = Integer.parseInt(request.getParameter("idFlight"));
        int userID = Integer.parseInt(request.getParameter("user"));

        TripID newTrip = new TripID(flightID, userID);
        BookFlight.addTrip(newTrip,trips);

        RequestDispatcher rd = request.getRequestDispatcher("bookForUser.jsp");
        rd.forward(request, response);
    }



}

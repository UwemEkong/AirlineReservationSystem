package servlets;

import dao.FlightDao;
import models.Flight;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.FlightId;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * This servlet handles all GET requests to the '/showAvailableFlights' endpoint
 */
@WebServlet(urlPatterns = "/searchAvailableFlights")
public class TM5_searchAvailableFlights extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String userID = request.getParameter("userID");

        FlightDao dao = new FlightDao();
        List<Flight> allFlights = dao.getAllAvailableFlights();
        List<Flight> resultFlights = new ArrayList();
        List<String> searchQuery = new ArrayList();

        String departureCity = request.getParameter("departureCity");
        String arrivalCity = request.getParameter("arrivalCity");
        String departureTime = request.getParameter("departureTime");
        String arrivalTime = request.getParameter("arrivalTime");

        searchQuery.add(departureCity);
        searchQuery.add(arrivalCity);
        searchQuery.add(departureTime);
        searchQuery.add(arrivalTime);


        // 4 Blanks

        if (departureCity.equals("") && arrivalCity.equals("") && departureTime.equals("") && arrivalTime.equals(""))
        {
            resultFlights = allFlights;
        }


        // 3 Blanks

        if (!departureCity.equals("") && arrivalCity.equals("") && departureTime.equals("") && arrivalTime.equals(""))
        { for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getDepartureCity().equals(departureCity))
            {resultFlights.add(allFlights.get(i));}}}

        if (departureCity.equals("") && !arrivalCity.equals("") && departureTime.equals("") && arrivalTime.equals(""))
        { for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getArrivalCity().equals(arrivalCity))
            {resultFlights.add(allFlights.get(i));}}}

        if (departureCity.equals("") && arrivalCity.equals("") && !departureTime.equals("") && arrivalTime.equals(""))
        { for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getDepartureTime().equals(departureTime))
            {resultFlights.add(allFlights.get(i));}}}

        if (departureCity.equals("") && arrivalCity.equals("") && departureTime.equals("") && !arrivalTime.equals(""))
        { for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getArrivalTime().equals(arrivalTime))
            {resultFlights.add(allFlights.get(i));}}}

        // 2 Blanks

        if (!departureCity.equals("") && !arrivalCity.equals("") && departureTime.equals("") && arrivalTime.equals(""))
        { for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getDepartureCity().equals(departureCity) && allFlights.get(i).getArrivalCity().equals(arrivalCity))
            {resultFlights.add(allFlights.get(i));}}}

        if (!departureCity.equals("") && arrivalCity.equals("") && !departureTime.equals("") && arrivalTime.equals(""))
        { for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getDepartureCity().equals(departureCity) && allFlights.get(i).getDepartureTime().equals(departureTime))
            {resultFlights.add(allFlights.get(i));}}}

        if (!departureCity.equals("") && arrivalCity.equals("") && departureTime.equals("") && !arrivalTime.equals(""))
        { for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getDepartureCity().equals(departureCity) && allFlights.get(i).getArrivalTime().equals(arrivalTime))
            {resultFlights.add(allFlights.get(i));}}}

        if (departureCity.equals("") && !arrivalCity.equals("") && !departureTime.equals("") && arrivalTime.equals(""))
        { for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getArrivalCity().equals(arrivalCity) && allFlights.get(i).getDepartureTime().equals(departureTime))
            {resultFlights.add(allFlights.get(i));}}}

        if (departureCity.equals("") && !arrivalCity.equals("") && departureTime.equals("") && !arrivalTime.equals(""))
        { for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getArrivalCity().equals(arrivalCity) && allFlights.get(i).getArrivalTime().equals(arrivalTime))
            {resultFlights.add(allFlights.get(i));}}}

        if (departureCity.equals("") && arrivalCity.equals("") && !departureTime.equals("") && !arrivalTime.equals(""))
        { for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getDepartureTime().equals(departureTime) && allFlights.get(i).getArrivalTime().equals(arrivalTime))
            {resultFlights.add(allFlights.get(i));}}}

        // 1 Blank

        if (departureCity.equals("") && !arrivalCity.equals("") && !departureTime.equals("") && !arrivalTime.equals(""))
        { for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getArrivalCity().equals(arrivalCity) &&
                    allFlights.get(i).getDepartureTime().equals(departureTime) &&
                    allFlights.get(i).getArrivalTime().equals(arrivalTime))
            {resultFlights.add(allFlights.get(i));}}}


        if (!departureCity.equals("") && arrivalCity.equals("") && !departureTime.equals("") && !arrivalTime.equals(""))
        { for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getDepartureCity().equals(departureCity) &&
                    allFlights.get(i).getDepartureTime().equals(departureTime) &&
                    allFlights.get(i).getArrivalTime().equals(arrivalTime))
            {resultFlights.add(allFlights.get(i));}}}

        if (!departureCity.equals("") && !arrivalCity.equals("") && departureTime.equals("") && !arrivalTime.equals(""))
        { for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getDepartureCity().equals(departureCity) &&
                    allFlights.get(i).getArrivalCity().equals(arrivalCity) &&
                    allFlights.get(i).getArrivalTime().equals(arrivalTime))
            {resultFlights.add(allFlights.get(i));}}}

        if (!departureCity.equals("") && !arrivalCity.equals("") && !departureTime.equals("") && arrivalTime.equals(""))
        { for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getDepartureCity().equals(departureCity) &&
                    allFlights.get(i).getArrivalCity().equals(arrivalCity) &&
                    allFlights.get(i).getDepartureTime().equals(departureTime))
            {resultFlights.add(allFlights.get(i));}}}

        // 0 Blanks

        if (!departureCity.equals("") && !arrivalCity.equals("") && !departureTime.equals("") && !arrivalTime.equals(""))
        { for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getDepartureCity().equals(departureCity) &&
                    allFlights.get(i).getArrivalCity().equals(arrivalCity) &&
                    allFlights.get(i).getDepartureTime().equals(departureTime)&&
                    allFlights.get(i).getArrivalTime().equals(arrivalTime))
            {resultFlights.add(allFlights.get(i));}}}


        if (userID.equals(""))
        {
            RequestDispatcher rd = request.getRequestDispatcher("showFlight2.jsp");
            request.setAttribute("flights", resultFlights);
            rd.forward(request, response);
        }
        else
        {
            RequestDispatcher rd = request.getRequestDispatcher("showFlight1.jsp");
            request.setAttribute("flights", resultFlights);
            rd.forward(request, response);
        }


    }
}

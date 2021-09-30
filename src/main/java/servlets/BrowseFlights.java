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
import java.util.ArrayList;
import java.util.List;

/**
 * This servlet handles all GET requests to the '/browseFlights' endpoint
 */
@WebServlet(urlPatterns = "/browseFlights")
public class BrowseFlights extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String userID = request.getParameter("userID");

        FlightDao dao = new FlightDao();
        List<Flight> allFlights = dao.getAllAvailableFlights();
        List<Flight> resultFlights = new ArrayList();

        String departureCity = request.getParameter("departureCity");
        String arrivalCity = request.getParameter("arrivalCity");
        String departureTime = request.getParameter("departureTime");
        String arrivalTime = request.getParameter("arrivalTime");

        // Admin Privilege: Delete Flight
        if (departureCity.equals("departureCityAdminPrivilege") &&
                arrivalCity.equals("arrivalCityAdminPrivilege") &&
                departureTime.equals("departureTimeAdminPrivilege") &&
                arrivalTime.equals("arrivalTimeAdminPrivilege")) {
            resultFlights = allFlights;
            RequestDispatcher rd = request.getRequestDispatcher("deleteFlight.jsp");
            request.setAttribute("flights", resultFlights);
            rd.forward(request, response);
            return;
        }


        // 4 Blanks

        if (departureCity.equals("") && arrivalCity.equals("") && departureTime.equals("") && arrivalTime.equals("")) {
            resultFlights = allFlights;

        }


        // 3 Blanks

        if (!departureCity.equals("") && arrivalCity.equals("") && departureTime.equals("") && arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getDepartureCity().equals(departureCity)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        if (departureCity.equals("") && !arrivalCity.equals("") && departureTime.equals("") && arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getArrivalCity().equals(arrivalCity)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        if (departureCity.equals("") && arrivalCity.equals("") && !departureTime.equals("") && arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getDepartureTime().equals(departureTime)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        if (departureCity.equals("") && arrivalCity.equals("") && departureTime.equals("") && !arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getArrivalTime().equals(arrivalTime)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        // 2 Blanks

        if (!departureCity.equals("") && !arrivalCity.equals("") && departureTime.equals("") && arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getDepartureCity().equals(departureCity) && allFlights.get(i).getArrivalCity().equals(arrivalCity)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        if (!departureCity.equals("") && arrivalCity.equals("") && !departureTime.equals("") && arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getDepartureCity().equals(departureCity) && allFlights.get(i).getDepartureTime().equals(departureTime)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        if (!departureCity.equals("") && arrivalCity.equals("") && departureTime.equals("") && !arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getDepartureCity().equals(departureCity) && allFlights.get(i).getArrivalTime().equals(arrivalTime)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        if (departureCity.equals("") && !arrivalCity.equals("") && !departureTime.equals("") && arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getArrivalCity().equals(arrivalCity) && allFlights.get(i).getDepartureTime().equals(departureTime)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        if (departureCity.equals("") && !arrivalCity.equals("") && departureTime.equals("") && !arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getArrivalCity().equals(arrivalCity) && allFlights.get(i).getArrivalTime().equals(arrivalTime)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        if (departureCity.equals("") && arrivalCity.equals("") && !departureTime.equals("") && !arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getDepartureTime().equals(departureTime) && allFlights.get(i).getArrivalTime().equals(arrivalTime)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        // 1 Blank

        if (departureCity.equals("") && !arrivalCity.equals("") && !departureTime.equals("") && !arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getArrivalCity().equals(arrivalCity) &&
                        allFlights.get(i).getDepartureTime().equals(departureTime) &&
                        allFlights.get(i).getArrivalTime().equals(arrivalTime)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }


        if (!departureCity.equals("") && arrivalCity.equals("") && !departureTime.equals("") && !arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getDepartureCity().equals(departureCity) &&
                        allFlights.get(i).getDepartureTime().equals(departureTime) &&
                        allFlights.get(i).getArrivalTime().equals(arrivalTime)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        if (!departureCity.equals("") && !arrivalCity.equals("") && departureTime.equals("") && !arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getDepartureCity().equals(departureCity) &&
                        allFlights.get(i).getArrivalCity().equals(arrivalCity) &&
                        allFlights.get(i).getArrivalTime().equals(arrivalTime)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        if (!departureCity.equals("") && !arrivalCity.equals("") && !departureTime.equals("") && arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getDepartureCity().equals(departureCity) &&
                        allFlights.get(i).getArrivalCity().equals(arrivalCity) &&
                        allFlights.get(i).getDepartureTime().equals(departureTime)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        // 0 Blanks

        if (!departureCity.equals("") && !arrivalCity.equals("") && !departureTime.equals("") && !arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getDepartureCity().equals(departureCity) &&
                        allFlights.get(i).getArrivalCity().equals(arrivalCity) &&
                        allFlights.get(i).getDepartureTime().equals(departureTime) &&
                        allFlights.get(i).getArrivalTime().equals(arrivalTime)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        RequestDispatcher rd = request.getRequestDispatcher("showBrowseResults.jsp");
        request.setAttribute("flights", resultFlights);
        rd.forward(request, response);


    }
}

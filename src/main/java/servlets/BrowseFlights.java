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

        String departureCity = request.getParameter("departureCity");
        String arrivalCity = request.getParameter("arrivalCity");
        String departureTime = request.getParameter("departureTime");
        String arrivalTime = request.getParameter("arrivalTime");

        List<Flight> resultFlights = browseFlights(departureCity, arrivalCity, departureTime, arrivalTime);

        RequestDispatcher rd = request.getRequestDispatcher("showBrowseResults.jsp");
        request.setAttribute("flights", resultFlights);
        rd.forward(request, response);
    }

    public List<Flight> browseFlights(String departureCity, String arrivalCity, String departureTime, String arrivalTime) {
        List<Flight> resultFlights = new ArrayList();

        FlightDao dao = new FlightDao();
        List<Flight> allFlights = dao.getAllAvailableFlights();

        // 4 Blanks

        // 1
        if (departureCity.equals("") && arrivalCity.equals("") && departureTime.equals("") && arrivalTime.equals("")) {
            resultFlights = allFlights;

        }


        // 3 Blanks

        // 2
        if (!departureCity.equals("") && arrivalCity.equals("") && departureTime.equals("") && arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getDepartureCity().equals(departureCity)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        // 3
        if (departureCity.equals("") && !arrivalCity.equals("") && departureTime.equals("") && arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getArrivalCity().equals(arrivalCity)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        // 4
        if (departureCity.equals("") && arrivalCity.equals("") && !departureTime.equals("") && arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getDepartureTime().equals(departureTime)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        // 5
        if (departureCity.equals("") && arrivalCity.equals("") && departureTime.equals("") && !arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getArrivalTime().equals(arrivalTime)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        // 2 Blanks

        // 6
        if (!departureCity.equals("") && !arrivalCity.equals("") && departureTime.equals("") && arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getDepartureCity().equals(departureCity) && allFlights.get(i).getArrivalCity().equals(arrivalCity)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        // 7
        if (!departureCity.equals("") && arrivalCity.equals("") && !departureTime.equals("") && arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getDepartureCity().equals(departureCity) && allFlights.get(i).getDepartureTime().equals(departureTime)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        // 8
        if (!departureCity.equals("") && arrivalCity.equals("") && departureTime.equals("") && !arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getDepartureCity().equals(departureCity) && allFlights.get(i).getArrivalTime().equals(arrivalTime)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        // 9
        if (departureCity.equals("") && !arrivalCity.equals("") && !departureTime.equals("") && arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getArrivalCity().equals(arrivalCity) && allFlights.get(i).getDepartureTime().equals(departureTime)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        // 10
        if (departureCity.equals("") && !arrivalCity.equals("") && departureTime.equals("") && !arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getArrivalCity().equals(arrivalCity) && allFlights.get(i).getArrivalTime().equals(arrivalTime)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        // 11
        if (departureCity.equals("") && arrivalCity.equals("") && !departureTime.equals("") && !arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getDepartureTime().equals(departureTime) && allFlights.get(i).getArrivalTime().equals(arrivalTime)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        // 1 Blank

        // 12
        if (departureCity.equals("") && !arrivalCity.equals("") && !departureTime.equals("") && !arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getArrivalCity().equals(arrivalCity) &&
                        allFlights.get(i).getDepartureTime().equals(departureTime) &&
                        allFlights.get(i).getArrivalTime().equals(arrivalTime)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        // 13
        if (!departureCity.equals("") && arrivalCity.equals("") && !departureTime.equals("") && !arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getDepartureCity().equals(departureCity) &&
                        allFlights.get(i).getDepartureTime().equals(departureTime) &&
                        allFlights.get(i).getArrivalTime().equals(arrivalTime)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        // 14
        if (!departureCity.equals("") && !arrivalCity.equals("") && departureTime.equals("") && !arrivalTime.equals("")) {
            for (int i = 0; i < allFlights.size(); i++) {
                if (allFlights.get(i).getDepartureCity().equals(departureCity) &&
                        allFlights.get(i).getArrivalCity().equals(arrivalCity) &&
                        allFlights.get(i).getArrivalTime().equals(arrivalTime)) {
                    resultFlights.add(allFlights.get(i));
                }
            }
        }

        // 15
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

        // 16
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


        return resultFlights;

    }


}

package servlets;

import dao.FlightDao;
import dao.TripDao;
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

        if (request.getParameter("userID") == null) {

            List<Flight> resultFlights = browseFlights(departureCity, arrivalCity, departureTime, arrivalTime);
            RequestDispatcher rd = request.getRequestDispatcher("showBrowseResults.jsp");
            request.setAttribute("flights", resultFlights);
            rd.forward(request, response);
        } else {
            int userID = Integer.parseInt(request.getParameter("userID"));
            List<Flight> alreadyBookedTrips = listFlights(userID);

            List<Flight> resultFlights = browseFlights(departureCity, arrivalCity, departureTime, arrivalTime);
            List<Flight> notBookedFlights = new ArrayList<>();

            for (int i = 0; i < resultFlights.size(); i++) {
                boolean booked = false;
                for (int j = 0; j < alreadyBookedTrips.size(); j++) {
                    if (resultFlights.get(i).getFlightID() == alreadyBookedTrips.get(j).getFlightID()) {
                        booked = true;
                    }
                }
                if (!booked) {
                    notBookedFlights.add(resultFlights.get(i));
                }

            }

            RequestDispatcher rd = request.getRequestDispatcher("showBrowseResults.jsp");
            request.setAttribute("flights", notBookedFlights);
            rd.forward(request, response);
        }

    }

    /**
     * This method gets all the flights booked by a specific user.
     *
     * @param userID - the id of the user
     * @return flights - the list of flights booked by the user
     */
    public static List<Flight> listFlights(int userID) {
        TripDao dao = new TripDao();
        List<Flight> flights = dao.getAllTrips(userID);
        return flights;
    }

    /**
     * This method gets the results of the browse.
     *
     * @param departureCity - the departure city
     * @param arrivalCity   - the arrival city
     * @param departureTime - the departure time
     * @param arrivalTime   - the arrival time
     * @return resultFlights - the list of flights matching the browse parameters
     */
    public List<Flight> browseFlights(String departureCity, String arrivalCity, String departureTime, String arrivalTime) {
        List<Flight> resultFlights = new ArrayList();

        FlightDao dao = new FlightDao();
        List<Flight> allFlights = dao.getAllAvailableFlights();

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

        return resultFlights;

    }

}

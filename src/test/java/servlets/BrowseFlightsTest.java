package servlets;

import dao.FlightDao;
import junit.framework.TestCase;
import models.Flight;
import java.util.ArrayList;
import java.util.List;

public class BrowseFlightsTest extends TestCase {

    /**
     * This tests the BrowseFlights class.
     */
    public void testBrowseFlights1() {

        String departureCity = "";
        String arrivalCity = "";
        String departureTime = "";
        String arrivalTime = "";

        // This gets a list of matching flights
        FlightDao dao = new FlightDao();
        List<Flight> allFlights = dao.getAllAvailableFlights();
        List<Flight> expectedFlights = allFlights;

        // this performs the browse (actual)
        BrowseFlights browseFlights = new BrowseFlights();
        List<Flight> actualFlights = browseFlights.browseFlights(departureCity, arrivalCity, departureTime, arrivalTime);

        // this checks if the result of the browse is accurate
        for (int i = 0; i < expectedFlights.size(); i++) {
            assertEquals(expectedFlights.get(i), actualFlights.get(i));
        }
    }

    /**
     * This tests the BrowseFlights class.
     */
    public void testBrowseFlights2() {

        String departureCity = "Atlanta, ATL";
        String arrivalCity = "";
        String departureTime = "";
        String arrivalTime = "";

        // This creates a list of matching flights
        FlightDao dao = new FlightDao();
        List<Flight> allFlights = dao.getAllAvailableFlights();
        List<Flight> expectedFlights = new ArrayList();
        for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getDepartureCity().equals(departureCity)) {
                expectedFlights.add(allFlights.get(i));
            }
        }

        // this performs the browse (actual)
        BrowseFlights browseFlights = new BrowseFlights();
        List<Flight> actualFlights = browseFlights.browseFlights(departureCity, arrivalCity, departureTime, arrivalTime);

        // this checks if the result of the browse is accurate
        for (int i = 0; i < expectedFlights.size(); i++) {
            assertEquals(expectedFlights.get(i), actualFlights.get(i));
        }
    }


    /**
     * This tests the BrowseFlights class.
     */
    public void testBrowseFlights3() {

        String departureCity = "";
        String arrivalCity = "Seattle, SEA";
        String departureTime = "";
        String arrivalTime = "";

        // This creates a list of matching flights
        FlightDao dao = new FlightDao();
        List<Flight> allFlights = dao.getAllAvailableFlights();
        List<Flight> expectedFlights = new ArrayList();
        for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getArrivalCity().equals(arrivalCity)) {
                expectedFlights.add(allFlights.get(i));
            }
        }

        // this performs the browse (actual)
        BrowseFlights browseFlights = new BrowseFlights();
        List<Flight> actualFlights = browseFlights.browseFlights(departureCity, arrivalCity, departureTime, arrivalTime);

        // this checks if the result of the browse is accurate
        for (int i = 0; i < expectedFlights.size(); i++) {
            assertEquals(expectedFlights.get(i), actualFlights.get(i));
        }
    }


    /**
     * This tests the BrowseFlights class.
     */
    public void testBrowseFlights4() {

        String departureCity = "";
        String arrivalCity = "";
        String departureTime = "11/01/2021 - 2:00PM";
        String arrivalTime = "";

        // This creates a list of matching flights
        FlightDao dao = new FlightDao();
        List<Flight> allFlights = dao.getAllAvailableFlights();
        List<Flight> expectedFlights = new ArrayList();
        for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getDepartureTime().equals(departureTime)) {
                expectedFlights.add(allFlights.get(i));
            }
        }

        // this performs the browse (actual)
        BrowseFlights browseFlights = new BrowseFlights();
        List<Flight> actualFlights = browseFlights.browseFlights(departureCity, arrivalCity, departureTime, arrivalTime);

        // this checks if the result of the browse is accurate
        for (int i = 0; i < expectedFlights.size(); i++) {
            assertEquals(expectedFlights.get(i), actualFlights.get(i));
        }
    }


    /**
     * This tests the BrowseFlights class.
     */
    public void testBrowseFlights5() {

        String departureCity = "";
        String arrivalCity = "";
        String departureTime = "";
        String arrivalTime = "11/01/2021 - 7:00PM";

        // This creates a list of matching flights
        FlightDao dao = new FlightDao();
        List<Flight> allFlights = dao.getAllAvailableFlights();
        List<Flight> expectedFlights = new ArrayList();
        for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getArrivalTime().equals(arrivalTime)) {
                expectedFlights.add(allFlights.get(i));
            }
        }

        // this performs the browse (actual)
        BrowseFlights browseFlights = new BrowseFlights();
        List<Flight> actualFlights = browseFlights.browseFlights(departureCity, arrivalCity, departureTime, arrivalTime);

        // this checks if the result of the browse is accurate
        for (int i = 0; i < expectedFlights.size(); i++) {
            assertEquals(expectedFlights.get(i), actualFlights.get(i));
        }
    }


    /**
     * This tests the BrowseFlights class.
     */
    public void testBrowseFlights6() {

        String departureCity = "Atlanta, ATL";
        String arrivalCity = "Seattle, SEA";
        String departureTime = "";
        String arrivalTime = "";

        // This creates a list of matching flights
        FlightDao dao = new FlightDao();
        List<Flight> allFlights = dao.getAllAvailableFlights();
        List<Flight> expectedFlights = new ArrayList();
        for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getDepartureCity().equals(departureCity) && allFlights.get(i).getArrivalCity().equals(arrivalCity)) {
                expectedFlights.add(allFlights.get(i));
            }
        }

        // this performs the browse (actual)
        BrowseFlights browseFlights = new BrowseFlights();
        List<Flight> actualFlights = browseFlights.browseFlights(departureCity, arrivalCity, departureTime, arrivalTime);

        // this checks if the result of the browse is accurate
        for (int i = 0; i < expectedFlights.size(); i++) {
            assertEquals(expectedFlights.get(i), actualFlights.get(i));
        }
    }


    /**
     * This tests the BrowseFlights class.
     */
    public void testBrowseFlights7() {

        String departureCity = "Atlanta, ATL";
        String arrivalCity = "";
        String departureTime = "11/01/2021 - 2:00PM";
        String arrivalTime = "";

        // This creates a list of matching flights
        FlightDao dao = new FlightDao();
        List<Flight> allFlights = dao.getAllAvailableFlights();
        List<Flight> expectedFlights = new ArrayList();
        for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getDepartureCity().equals(departureCity) && allFlights.get(i).getDepartureTime().equals(departureTime)) {
                expectedFlights.add(allFlights.get(i));
            }
        }

        // this performs the browse (actual)
        BrowseFlights browseFlights = new BrowseFlights();
        List<Flight> actualFlights = browseFlights.browseFlights(departureCity, arrivalCity, departureTime, arrivalTime);

        // this checks if the result of the browse is accurate
        for (int i = 0; i < expectedFlights.size(); i++) {
            assertEquals(expectedFlights.get(i), actualFlights.get(i));
        }
    }


    /**
     * This tests the BrowseFlights class.
     */
    public void testBrowseFlights8() {

        String departureCity = "Atlanta, ATL";
        String arrivalCity = "";
        String departureTime = "";
        String arrivalTime = "11/01/2021 - 7:00PM";

        // This creates a list of matching flights
        FlightDao dao = new FlightDao();
        List<Flight> allFlights = dao.getAllAvailableFlights();
        List<Flight> expectedFlights = new ArrayList();
        for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getDepartureCity().equals(departureCity) && allFlights.get(i).getArrivalTime().equals(arrivalTime)) {
                expectedFlights.add(allFlights.get(i));
            }
        }

        // this performs the browse (actual)
        BrowseFlights browseFlights = new BrowseFlights();
        List<Flight> actualFlights = browseFlights.browseFlights(departureCity, arrivalCity, departureTime, arrivalTime);

        // this checks if the result of the browse is accurate
        for (int i = 0; i < expectedFlights.size(); i++) {
            assertEquals(expectedFlights.get(i), actualFlights.get(i));
        }
    }


    /**
     * This tests the BrowseFlights class.
     */
    public void testBrowseFlights9() {

        String departureCity = "";
        String arrivalCity = "Seattle, SEA";
        String departureTime = "11/01/2021 - 2:00PM";
        String arrivalTime = "";

        // This creates a list of matching flights
        FlightDao dao = new FlightDao();
        List<Flight> allFlights = dao.getAllAvailableFlights();
        List<Flight> expectedFlights = new ArrayList();
        for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getArrivalCity().equals(arrivalCity) && allFlights.get(i).getDepartureTime().equals(departureTime)) {
                expectedFlights.add(allFlights.get(i));
            }
        }

        // this performs the browse (actual)
        BrowseFlights browseFlights = new BrowseFlights();
        List<Flight> actualFlights = browseFlights.browseFlights(departureCity, arrivalCity, departureTime, arrivalTime);

        // this checks if the result of the browse is accurate
        for (int i = 0; i < expectedFlights.size(); i++) {
            assertEquals(expectedFlights.get(i), actualFlights.get(i));
        }
    }


    /**
     * This tests the BrowseFlights class.
     */
    public void testBrowseFlights10() {

        String departureCity = "";
        String arrivalCity = "Seattle, SEA";
        String departureTime = "";
        String arrivalTime = "11/01/2021 - 7:00PM";

        // This creates a list of matching flights
        FlightDao dao = new FlightDao();
        List<Flight> allFlights = dao.getAllAvailableFlights();
        List<Flight> expectedFlights = new ArrayList();
        for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getArrivalCity().equals(arrivalCity) && allFlights.get(i).getArrivalTime().equals(arrivalTime)) {
                expectedFlights.add(allFlights.get(i));
            }
        }

        // this performs the browse (actual)
        BrowseFlights browseFlights = new BrowseFlights();
        List<Flight> actualFlights = browseFlights.browseFlights(departureCity, arrivalCity, departureTime, arrivalTime);

        // this checks if the result of the browse is accurate
        for (int i = 0; i < expectedFlights.size(); i++) {
            assertEquals(expectedFlights.get(i), actualFlights.get(i));
        }
    }


    /**
     * This tests the BrowseFlights class.
     */
    public void testBrowseFlights11() {

        String departureCity = "";
        String arrivalCity = "";
        String departureTime = "11/01/2021 - 2:00PM";
        String arrivalTime = "11/01/2021 - 7:00PM";

        // This creates a list of matching flights
        FlightDao dao = new FlightDao();
        List<Flight> allFlights = dao.getAllAvailableFlights();
        List<Flight> expectedFlights = new ArrayList();
        for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getDepartureTime().equals(departureTime) && allFlights.get(i).getArrivalTime().equals(arrivalTime)) {
                expectedFlights.add(allFlights.get(i));
            }
        }

        // this performs the browse (actual)
        BrowseFlights browseFlights = new BrowseFlights();
        List<Flight> actualFlights = browseFlights.browseFlights(departureCity, arrivalCity, departureTime, arrivalTime);

        // this checks if the result of the browse is accurate
        for (int i = 0; i < expectedFlights.size(); i++) {
            assertEquals(expectedFlights.get(i), actualFlights.get(i));
        }
    }


    /**
     * This tests the BrowseFlights class.
     */
    public void testBrowseFlights12() {

        String departureCity = "";
        String arrivalCity = "Seattle, SEA";
        String departureTime = "11/01/2021 - 2:00PM";
        String arrivalTime = "11/01/2021 - 7:00PM";

        // This creates a list of matching flights
        FlightDao dao = new FlightDao();
        List<Flight> allFlights = dao.getAllAvailableFlights();
        List<Flight> expectedFlights = new ArrayList();
        for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getArrivalCity().equals(arrivalCity) &&
                    allFlights.get(i).getDepartureTime().equals(departureTime) &&
                    allFlights.get(i).getArrivalTime().equals(arrivalTime)) {
                expectedFlights.add(allFlights.get(i));
            }
        }

        // this performs the browse (actual)
        BrowseFlights browseFlights = new BrowseFlights();
        List<Flight> actualFlights = browseFlights.browseFlights(departureCity, arrivalCity, departureTime, arrivalTime);

        // this checks if the result of the browse is accurate
        for (int i = 0; i < expectedFlights.size(); i++) {
            assertEquals(expectedFlights.get(i), actualFlights.get(i));
        }
    }


    /**
     * This tests the BrowseFlights class.
     */
    public void testBrowseFlights13() {

        String departureCity = "Atlanta, ATL";
        String arrivalCity = "";
        String departureTime = "11/01/2021 - 2:00PM";
        String arrivalTime = "11/01/2021 - 7:00PM";

        // This creates a list of matching flights
        FlightDao dao = new FlightDao();
        List<Flight> allFlights = dao.getAllAvailableFlights();
        List<Flight> expectedFlights = new ArrayList();
        for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getDepartureCity().equals(departureCity) &&
                    allFlights.get(i).getDepartureTime().equals(departureTime) &&
                    allFlights.get(i).getArrivalTime().equals(arrivalTime)) {
                expectedFlights.add(allFlights.get(i));
            }
        }

        // this performs the browse (actual)
        BrowseFlights browseFlights = new BrowseFlights();
        List<Flight> actualFlights = browseFlights.browseFlights(departureCity, arrivalCity, departureTime, arrivalTime);

        // this checks if the result of the browse is accurate
        for (int i = 0; i < expectedFlights.size(); i++) {
            assertEquals(expectedFlights.get(i), actualFlights.get(i));
        }
    }


    /**
     * This tests the BrowseFlights class.
     */
    public void testBrowseFlights14() {

        String departureCity = "Atlanta, ATL";
        String arrivalCity = "Seattle, SEA";
        String departureTime = "";
        String arrivalTime = "11/01/2021 - 7:00PM";

        // This creates a list of matching flights
        FlightDao dao = new FlightDao();
        List<Flight> allFlights = dao.getAllAvailableFlights();
        List<Flight> expectedFlights = new ArrayList();
        for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getDepartureCity().equals(departureCity) &&
                    allFlights.get(i).getArrivalCity().equals(arrivalCity) &&
                    allFlights.get(i).getArrivalTime().equals(arrivalTime)) {
                expectedFlights.add(allFlights.get(i));
            }
        }

        // this performs the browse (actual)
        BrowseFlights browseFlights = new BrowseFlights();
        List<Flight> actualFlights = browseFlights.browseFlights(departureCity, arrivalCity, departureTime, arrivalTime);

        // this checks if the result of the browse is accurate
        for (int i = 0; i < expectedFlights.size(); i++) {
            assertEquals(expectedFlights.get(i), actualFlights.get(i));
        }
    }


    /**
     * This tests the BrowseFlights class.
     */
    public void testBrowseFlights15() {

        String departureCity = "Atlanta, ATL";
        String arrivalCity = "Seattle, SEA";
        String departureTime = "11/01/2021 - 2:00PM";
        String arrivalTime = "";

        // This creates a list of matching flights
        FlightDao dao = new FlightDao();
        List<Flight> allFlights = dao.getAllAvailableFlights();
        List<Flight> expectedFlights = new ArrayList();
        for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getDepartureCity().equals(departureCity) &&
                    allFlights.get(i).getArrivalCity().equals(arrivalCity) &&
                    allFlights.get(i).getDepartureTime().equals(departureTime)) {
                expectedFlights.add(allFlights.get(i));
            }
        }

        // this performs the browse (actual)
        BrowseFlights browseFlights = new BrowseFlights();
        List<Flight> actualFlights = browseFlights.browseFlights(departureCity, arrivalCity, departureTime, arrivalTime);

        // this checks if the result of the browse is accurate
        for (int i = 0; i < expectedFlights.size(); i++) {
            assertEquals(expectedFlights.get(i), actualFlights.get(i));
        }
    }


    /**
     * This tests the BrowseFlights class.
     */
    public void testBrowseFlights16() {

        String departureCity = "Atlanta, ATL";
        String arrivalCity = "Seattle, SEA";
        String departureTime = "11/01/2021 - 2:00PM";
        String arrivalTime = "11/01/2021 - 7:00PM";


        // This creates a list of matching flights
        FlightDao dao = new FlightDao();
        List<Flight> allFlights = dao.getAllAvailableFlights();
        List<Flight> expectedFlights = new ArrayList();
        for (int i = 0; i < allFlights.size(); i++) {
            if (allFlights.get(i).getDepartureCity().equals(departureCity) &&
                    allFlights.get(i).getArrivalCity().equals(arrivalCity) &&
                    allFlights.get(i).getDepartureTime().equals(departureTime) &&
                    allFlights.get(i).getArrivalTime().equals(arrivalTime)) {
                expectedFlights.add(allFlights.get(i));
            }
        }

        // this performs the browse (actual)
        BrowseFlights browseFlights = new BrowseFlights();
        List<Flight> actualFlights = browseFlights.browseFlights(departureCity, arrivalCity, departureTime, arrivalTime);

        // this checks if the result of the browse is accurate
        for (int i = 0; i < expectedFlights.size(); i++) {
            assertEquals(expectedFlights.get(i), actualFlights.get(i));
        }
    }


}
package models;

/**
 * This is a helper class that makes it easier to work with the user's input data when they search for available flights.
 * The difference between this class and the 'flightID' column in the database table is that this class represents the fields taken from the form within 'browseFlights.jsp'
 */
public class FlightID {

    private String departureCity;
    private String arrivalCity;
    private String departureTime;
    private String arrivalTime;
    private int numberOfPassengers;

    public FlightID(String departureCity, String arrivalCity, String departureTime, String arrivalTime, int numberOfPassengers) {
        this.departureCity = departureCity;
        this.arrivalCity = arrivalCity;
        this.departureTime = departureTime;
        this.arrivalTime = arrivalTime;
        this.numberOfPassengers = numberOfPassengers;
    }

    public FlightID(String departureCity, String arrivalCity, String departureTime, String arrivalTime) {
        this.departureCity = departureCity;
        this.arrivalCity = arrivalCity;
        this.departureTime = departureTime;
        this.arrivalTime = arrivalTime;
    }

    public String getDepartureCity() {
        return departureCity;
    }

    public void setDepartureCity(String departureCity) {
        this.departureCity = departureCity;
    }

    public String getArrivalCity() {
        return arrivalCity;
    }

    public void setArrivalCity(String arrivalCity) {
        this.arrivalCity = arrivalCity;
    }

    public String getDepartureTime() {
        return departureTime;
    }

    public void setDepartureTime(String departureTime) {
        this.departureTime = departureTime;
    }

    public String getArrivalTime() {
        return arrivalTime;
    }

    public void setArrivalTime(String arrivalTime) {
        this.arrivalTime = arrivalTime;
    }

    public int getNumberOfPassengers() {
        return numberOfPassengers;
    }

    public void setNumberOfPassengers(int numberOfPassengers) {
        this.numberOfPassengers = numberOfPassengers;
    }

    @Override
    public String toString() {
        return "FlightId{" +
                "departureCity='" + departureCity + '\'' +
                ", arrivalCity='" + arrivalCity + '\'' +
                ", departureTime='" + departureTime + '\'' +
                ", arrivalTime='" + arrivalTime + '\'' +
                ", numberOfPassengers=" + numberOfPassengers +
                '}';
    }
}

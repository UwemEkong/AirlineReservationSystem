package models;

/**
 * Data model used to provide a Java representation of the 'flight' table within our database.
 * If we write a query to retrieve a record from the database,
 * then the Flight class provides an easy way to represent the record that we just retrieved from our flight table.
 */
public class Flight {

    private int flightID;
    private int availableSeats;
    private double price;
    private String departureCity;
    private String arrivalCity;
    private String departureTime;
    private String arrivalTime;
    private int flightCapacity;

    public Flight(int flightID, int availableSeats, double price, String departureCity, String arrivalCity, String departureTime, String arrivalTime, int flightCapacity) {
        this.flightID = flightID;
        this.availableSeats = availableSeats;
        this.price = price;
        this.departureCity = departureCity;
        this.arrivalCity = arrivalCity;
        this.departureTime = departureTime;
        this.arrivalTime = arrivalTime;
        this.flightCapacity = flightCapacity;
    }

    public Flight() {

    }

    public int getFlightID() {
        return flightID;
    }

    public void setFlightID(int flightID) {
        this.flightID = flightID;
    }


    public int getAvailableSeats() {
        return availableSeats;
    }

    public void setAvailableSeats(int availableSeats) {
        this.availableSeats = availableSeats;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
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

    public int getFlightCapacity() {
        return flightCapacity;
    }

    public void setFlightCapacity(int flightCapacity) {
        this.flightCapacity = flightCapacity;
    }

    @Override
    public String toString() {
        return "Flight{" +
                "flightID=" + flightID +
                ", availableSeats=" + availableSeats +
                ", price=" + price +
                ", departureCity='" + departureCity + '\'' +
                ", arrivalCity='" + arrivalCity + '\'' +
                ", departureTime='" + departureTime + '\'' +
                ", arrivalTime='" + arrivalTime + '\'' +
                ", flightCapacity='" + flightCapacity + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Flight flight = (Flight) o;
        return flightID == flight.flightID && availableSeats == flight.availableSeats && Double.compare(flight.price, price) == 0 && flightCapacity == flight.flightCapacity && departureCity.equals(flight.departureCity) && arrivalCity.equals(flight.arrivalCity) && departureTime.equals(flight.departureTime) && arrivalTime.equals(flight.arrivalTime);
    }
}

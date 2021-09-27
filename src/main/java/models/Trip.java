package models;

/**
 * Data model used to provide a Java representation of the 'trip' table within our database.
 */
public class Trip {

    private int tripID;
    private int flightID;
    private int userID;

    public Trip(int tripID, int flightID, int userID ) {
        this.tripID = tripID;
        this.flightID = flightID;
        this.userID = userID;

    }

    public Trip() {

    }

    public int getTripID() {
        return tripID;
    }
    public void setTripID(int tripID) {
        this.tripID = tripID;
    }

    public int getFlightID() {
        return flightID;
    }
    public void setFlightID(int flightID) {
        this.flightID = flightID;
    }

    public int getUserID() {
        return userID;
    }
    public void setUserID(int userID) {
        this.userID = userID;
    }





    @Override
    public String toString() {
        return "Trip{" +
                "tripID=" + tripID +
                ", flightID=" + flightID +
                ", userID='" + userID + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Trip trip = (Trip) o;
        return tripID == trip.tripID && flightID == trip.flightID &&  userID == trip.userID;
    }
}

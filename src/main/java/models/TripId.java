package models;

/**
 * This is a helper class that makes it easier to work with the user's command to show their trips.
 */
public class TripId {

    private int flightID;
    private int userID;

    public TripId(int flightID, int userID) {

        this.flightID = flightID;
        this.userID = userID;

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
        return "TripId{" +
                ", flightID='" + flightID + '\'' +
                ", userID=" + userID +
                '}';
    }
}
